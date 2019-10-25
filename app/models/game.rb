class Game < ApplicationRecord
  belongs_to :company
  has_many :plays
  has_many :users, through: :plays
  validates :name, presence: true
  validates :cost, presence: true
  validates :winnings, presence: true


def self.wordchoose(params)
  @details = params
@newarray = @details.split
 @wordchoose = @newarray[rand(0..@newarray.length)]
@wordchoose
end

def self.wordcount
  @wordcount = []
  @newarray.each do |word|
    if word == @wordchoose
    @wordcount << word
    end
    end
    @count = @wordcount.length
  @count   
  end


end
