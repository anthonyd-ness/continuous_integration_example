require 'rubygems'
require 'aws-sdk-v1'
load File.expand_path('../../config/aws.config', __FILE__)

stackdomain==ARGV[0]

sdb = AWS::SimpleDB.new

domain = sdb.domains[stackdomain]
domain.delete!
