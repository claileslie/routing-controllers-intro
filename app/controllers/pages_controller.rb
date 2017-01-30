class PagesController < ApplicationController

  def welcome
    @header = "Voici les chats"

  end

  def about
    @header = "Nous sommes les chats"
  end

  def contest
    @header = "Gagner!"
  end

  def kitten
    requested_width = params[:width]
    requested_height = params[:height]
    @kitten_url = "http://lorempixel.com/#{requested_width}/#{requested_height}/cats"
  end
end
