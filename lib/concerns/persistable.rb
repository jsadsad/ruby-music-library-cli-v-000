module Concerns::Persistable
  module ClassMethods
    def reset_all
      self.all.clear
    end
    def 
      
  end
  module InstanceMethods
    def save
      self.class.all << self
    end
end