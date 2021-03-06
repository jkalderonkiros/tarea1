class Car < ActiveRecord::Base
  belongs_to :person
  attr_accessible :person_id, :model, :year

  validates :person_id, :model, :year, presence: true
end
