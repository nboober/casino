class GuessController < ApplicationController

  before_action :authorized


def welcome
end

def answer
  @number = params[:guess]
end


    
end
  