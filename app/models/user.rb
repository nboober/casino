class User < ApplicationRecord
  has_secure_password
  has_many :plays
  has_many :games, through: :plays
  validates :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validate :age_must_be_valid

  @@total = 0

  def age_must_be_valid
    if age < 18
      errors.add(:age, "You must be 18 years old or older to use this site.")
    end
  end

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
