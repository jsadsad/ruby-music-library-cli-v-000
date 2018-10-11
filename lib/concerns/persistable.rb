module Concerns::Persistable
  module ClassMethods
    
  end
  module InstanceMethods
    def save
      self.class.all << self
    end
end