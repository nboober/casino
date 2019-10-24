class UsersController < ApplicationController

  before_action :authorized, only: [:index, :show, :edit, :update, :destroy]


  def index
    @users = User.all
  end

  def new
    @user = User.new
    @credit_card = CreditCard.new
    @credit_card.user = @user
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "Thank you for registering. Here is 100 tokens on us!"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to home_path
  end

  def updater
    revenue = params[:revenue].to_i
    tokens = params[:tokens].to_i
    current_user.increment_tokens(tokens)
    User.increase_total_revenue(revenue)

    redirect_to home_path, notice: "#{tokens} tokens have been added to your account. Thank You for Purchasing!"
  end
  
  def cashin
    revenue = params[:revenue].to_i
    tokens = params[:tokens].to_i
    current_user.decrement_tokens(tokens)
    User.decrease_total_revenue(revenue)
    current_user.increment_cash(revenue)

    redirect_to home_path, notice: "#{tokens} tokens have been cashed in. $#{revenue}.00 has been added to you credit card."
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :age, :username, :password,
      credit_card_attributes:[
        :cardnumber,
        :expmonth,
        :expyear,
        :securitycode,
        :user_id
      ])
  end
end
