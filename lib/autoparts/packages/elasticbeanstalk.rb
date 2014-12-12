# Copyright (c) 2013-2014 Irrational Industries Inc. d.b.a. Nitrous.IO
# This software is licensed under the [BSD 2-Clause license](https://raw.github.com/nitrous-io/autoparts/master/LICENSE).

module Autoparts
  module Packages
    class Elasticbeanstalk < Package
      name 'elasticbeanstalk'
      version '2.6.4'
      description "Elastic Beanstalk Command Line Tool: A command line client for interacting with the AWS Elastic Beanstalk APIs"
      category Category::UTILITIES

      source_url 'https://s3.amazonaws.com/elasticbeanstalk/cli/AWS-ElasticBeanstalk-CLI-2.6.4.zip'
      source_sha1 '01dabe18801d4e16a1790ff737a28e29fdebb0ef'
      source_filetype 'zip'

      depends_on 'python2'

      def install
        prefix_path.parent.mkpath
        FileUtils.rm_rf prefix_path
        bin_path.mkpath
        execute 'mv', extracted_archive_path + 'AWS-ElasticBeanstalk-CLI-2.6.4/', prefix_path
        execute 'ln', '-s', prefix_path + 'eb/linux/python2.7/eb', bin_path
      end

      

    end
  end
end
