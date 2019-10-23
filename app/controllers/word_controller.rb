class WordController < ApplicationController
    
    before_action :authorized


def welcome

end

def wordanwser
@details = params[:words]

end




end
  