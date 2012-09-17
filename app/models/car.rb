class Car < ActiveRecord::Base
  belongs_to :person
  attr_accessible :model, :year
end
