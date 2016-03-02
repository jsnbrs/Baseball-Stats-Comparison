require 'pry'
class PlayersController < ApplicationController

  def index

    if params[:age]
      @age = Player.search(params[:age])
    else
      @age = Player.first

    if params[:search1]
      @players = Player.search(params[:search1])
    else
      @players = Player.first
    end

    if params[:search2]
      @player_two = Player.search(params[:search2])
    else
      @player_two = Player.last
    end
   end
  end

  # def show
  #   @player = Player.find(params[:name])
  # end
end
