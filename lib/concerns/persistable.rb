module Concerns::Persistable
  module ClassMethods
    def reset_all
      self.class.all.clear
      
  end
  module InstanceMethods
    def save
      self.class.all << self
    end
end