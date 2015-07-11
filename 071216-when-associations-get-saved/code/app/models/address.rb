class Address < ActiveRecord::Base
  validates_presence_of :street  
  belongs_to :account
end
