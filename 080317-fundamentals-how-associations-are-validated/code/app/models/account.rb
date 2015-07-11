class Account < ActiveRecord::Base
 validates_associated :address, :unless => :skip_validation_on_address
 validates_presence_of :name
 has_one :address 
 
 attr_accessor :skip_validation_on_address
end
