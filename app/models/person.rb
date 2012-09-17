class Person < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :cars
  accepts_nested_attributes_for :cars, :allow_destroy => true
end
