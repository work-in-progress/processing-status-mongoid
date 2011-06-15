module ProcessingStatusMongoid
  module Models
    class ProcessingStatusItem
      include ::Mongoid::Document
      include ::Mongoid::Timestamps
      collection_name = "external.processing_status_items"
      
      # Need to think about how we handle this embedded situation
      #embedded_in :processing_status, :inverse_of => :processing_status_items
      
      
      # General Status Fields
      field :status
      field :valid_lease_till, :type => Time
      field :no_lease_before, :type => Time

      field :category
      #field :throttle_per_category
            
      # a generic field indicating who leased this task
      field :leased_by
      
      # A field that can be used to prevent duplicate tasks. Example scenario:
      # A user model requires a background task to be invoked on a property change,
      # but does not require those changes individually. E.g if you have something like
      # name = "test" and name = "test2" a second later, this should really trigger only 
      # one background task invokation.
      # That is what duplicate_id is good for.
      field :duplicate_id, :index => true
      
      # Errors
      field :current_error_count, :type => Integer, :default => 0
      field :total_error_count, :type => Integer, :default => 0
      
      # Description and payload
      field :message, :default => ''
      field :payload
      
      # Metrics
      field :current_item_count, :type => Integer,:default => 0
      field :total_items_count ,:type => Integer, :default => 0
      field :overall_items_count ,:type => Integer, :default => 0
      
      field :average_processing_time, :type => Time
      field :start_time, :type => Time
      
      # Post Processing Hooks
      
      # post processing hooks invoked
    end  
  end
end