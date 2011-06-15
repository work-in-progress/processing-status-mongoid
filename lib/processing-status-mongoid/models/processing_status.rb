module ProcessingStatusMongoid
  module Models
    
    # A status object that can be embedded. It references ProcessingStatusItems
    class ProcessingStatus
      include ::Mongoid::Document
      include ::Mongoid::Timestamps
      collection_name = "external.processing_stati"
      
      #embeds_many :processing_status_items, :class_name => 'ProcessingStatusItem', :validate => false, :inverse_of => :processing_status

      #embedded_in :processable, :inverse_of => :processing_status
      
      
    end  
  end
end