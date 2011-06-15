require 'spec_helper'
require 'processing-status-mongoid'

describe ProcessingStatusMongoid::Helper do
  
  it 'should end if the block completes' do
    counter = 0
    ProcessingStatusMongoid::Helper.run_with_safety do
      counter = counter + 1
      raise "That is bad" if counter > 1
    end
    counter.should == 1
  end
  
  it 'should retry 50 times, then exit' do
    counter = 0
    ProcessingStatusMongoid::Helper.run_with_safety do
      counter = counter + 1
      raise "That is bad"
    end
    
    counter.should == 50
  end
  
end