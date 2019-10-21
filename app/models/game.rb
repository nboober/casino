class Game < ApplicationRecord
  belongs_to :company
  has_many :plays
  has_many :users, through: :plays
end
