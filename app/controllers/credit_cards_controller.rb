class CreditCardsController < ApplicationController
    
    def index
        @credit_card = CreditCard.all
    end

    def new
        @credit_card = CreditCard.new
    end

    def create
        @credit_card = CreditCard.create(credit_card_params)

        redirect_to credit_card_path(@credit_card)
    end
    
      def show
        @credit_card = CreditCard.find(params[:id])
      end
    
      def edit
        @credit_card = CreditCard.find(params[:id])
      end
    
      def update
        @credit_card = CreditCard.find(params[:id])
        @credit_card.update(credit_card_params)
    
        redirect_to credit_card_path(@credit_card)
      end
    
      def destroy
        @credit_card = CreditCard.find(params[:id])
        @credit_card.destroy
    
        redirect_to credit_card_path
      end
    

    def credit_card_params
        params.require(:credit_card).permit(:cardnumber, :expmonth, :expyear, :securitycode)
    end

end
