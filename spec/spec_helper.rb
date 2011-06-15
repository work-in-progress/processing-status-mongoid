require 'rubygems'
require 'bundler/setup'
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'processing-status-mongoid'

Mongoid.configure do |config|
  config.master = config.master = Mongo::Connection.new.db('processing_status_mongoid_test')
end


