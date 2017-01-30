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

end
