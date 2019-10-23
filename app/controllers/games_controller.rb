class GamesController < ApplicationController
  
  before_action :authorized, only: [:show]
  
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end
