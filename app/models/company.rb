class Company < ApplicationRecord
  has_many :games

  validates :name, presence: true
  validates :location, presence: true

end
