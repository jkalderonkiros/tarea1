class Person < ActiveRecord::Base
  attr_accessible :cars, :email, :name
  has_many :cars
  accepts_nested_attributes_for :cars, :allow_destroy => true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
end
