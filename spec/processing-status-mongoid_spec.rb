require 'spec_helper'
require 'processing-status-mongoid'

describe ProcessingStatusMongoid::Models::ProcessingStatus do
  
  it 'create a status' do
    ps = ProcessingStatusMongoid::Models::ProcessingStatus.new()
    ps.should_not == nil
  end
  
end