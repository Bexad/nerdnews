class Rating < ActiveRecord::Base
  attr_accessible :name, :weight

  has_many :votes

  scope :positive, where('weight > 0')
  scope :negative, where('weight < 0')
end