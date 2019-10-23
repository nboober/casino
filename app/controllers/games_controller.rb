class GamesController < ApplicationController
  
  before_action :authorized, only: [:show]
  
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def decrementer

    tokens = params[:tokens].to_i
    current_user.decrement_tokens(tokens)

    redirect_to guesswelcome_path
  end

end
