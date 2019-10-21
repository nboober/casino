class GuessController < ApplicationController

def welcome
end

def answer
  @number = params[:guess]
end


    
end
  