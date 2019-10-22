class User < ApplicationRecord
  has_many :plays
  has_many :games, through: :plays

  @@total = 0

  def self.total_users
    User.all.length
  end

  def self.average_age
    total_users = User.all.length

    total_age = 0
    
    User.all.each do |user|
      total_age += user.age
    end
    
    average_age = (total_age/total_users)

    return average_age

  end

  def self.increase_total_revenue(amount)

    @@total += amount

  end

  def self.total_revenue

    return @@total

  end

  def increment_tokens(amount)
    self.tokens += amount
    self.save
  end

  def decrement_tokens(amount)
    self.tokens -= amount
    self.save
  end


end
