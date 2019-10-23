class WordController < ApplicationController
    
def welcome
  #displays welcome form, which submits to wordanswer_path
end

def wordanswer
  
  @word = Game.wordchoose(params[:words])
  @wordcount = Game.wordcount

end

def wordfinal
  @user_guess = params[:number]
@wordcount = params[:wordcount]

end


end
  