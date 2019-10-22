class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to user_path(@user)
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
    User.increase_total_revenue(revenue)
    current_user.increment_tokens(tokens)

    redirect_to home_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :username, :password)
  end
end
