class PagesController < ApplicationController

  def welcome
    @header = "Voici les chats"

  end

  def about
    @header = "Nous sommes les chats"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def secrets
    if
      params[:magic_word] != "butts"
        flash[:alert] = "Hint: WWTD? (What Would Tina Do?)"
        redirect_to '/welcome'
      end

  end

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_width = params[:width]
    requested_height = params[:height]
    @kitten_url = "http://lorempixel.com/#{requested_width}/#{requested_height}/cats"
  end
end
