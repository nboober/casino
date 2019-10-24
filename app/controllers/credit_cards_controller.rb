class CreditCardsController < ApplicationController

    def new
        @credit_card = CreditCard.new
    end

    def create
        @credit_card = CreditCard.create(credit_card_params)

    end

    def credit_card_params
        params.require(:credit_card).permit(:cardnumber, :expmonth, :expyear, :securitycode)
    end

end
