class GamesController < ApplicationController
    
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.valid?
      @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)

    redirect_to game_path(@game)
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    redirect_to admin_path
  end

  def decrementerguess

    tokens = params[:tokens].to_i
    current_user.decrement_tokens(tokens)

    game = Game.find_by(name: "Number Guesser")

    Play.create(user_id: current_user.id, game_id: game.id)

    redirect_to guesswelcome_path
  end

  def decrementerword

    tokens = params[:tokens].to_i
    current_user.decrement_tokens(tokens)

    game = Game.find_by(name: "Word Guesser")

    Play.create(user_id: current_user.id, game_id: game.id)

    redirect_to wordwelcome_path
  end

  private

  def game_params
    params.require(:game).permit(
      :name, :cost, :winnings, :company_id)
      
  end

end
