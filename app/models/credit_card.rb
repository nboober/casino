class CreditCard < ApplicationRecord
    belongs_to :user, inverse_of: :credit_card
    validates :cardnumber, presence: true  
    validates :expmonth, :inclusion => 1..12   
    validates :expyear, :inclusion => 2019..2999   
    validates :securitycode, :inclusion => 1..999   
end
