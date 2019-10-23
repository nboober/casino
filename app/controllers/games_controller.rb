class GamesController < ApplicationController
  
  before_action :authorized, only: [:show]
  
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def decrementerguess

    tokens = params[:tokens].to_i
    current_user.decrement_tokens(tokens)

    redirect_to guesswelcome_path
  end

  def decrementerword

    tokens = params[:tokens].to_i
    current_user.decrement_tokens(tokens)

    redirect_to wordwelcome_path
  end

end
