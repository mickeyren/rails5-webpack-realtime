class ActivitySerializer < ActiveModel::Serializer
    attributes :id, :duration, :notes
    attributes :display_duration
    
    def display_duration
      
    end
  end
  