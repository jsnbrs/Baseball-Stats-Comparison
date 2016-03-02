require 'pry'
class PlayersController < ApplicationController

  def index
    if params[:age]
      @age = Player.search(params[:age])
      @player1 = Player.search(params[:search1])
      @player2 = Player.search(params[:search2])

      # @play1 = Player.where(' name LIKE ?', 'params[:search1]')
      # @play2 = Player.where(' name LIKE ?', 'params[:search2]')
Binding.pry
    else
      @age = "25"
      @player1 = Player.last
      @player2 = Player.first
    end
# Binding.pry
  end

  def playerByAge
     # @agePlayer1 = Player.find_by(name: params[:search1], age: params[:age])
     # @agePlayer2 = Player.find_by(name: params[:search2], age: params[:age])
     #found here: http://stackoverflow.com/questions/3936621/rails-find-by-with-2-fields
     Binding.pry
  end

  def show
    @age = Player.find(params[:age])
    @player1 = Player.find(params[:search1])
    @player2 = Player.find(params[:search2])
    @agePlayer1 = Player.find_by(name: params[:search1], age: params[:age])
    @agePlayer2 = Player.find_by(name: params[:search2], age: params[:age])
    # redirect_to "/players"
  end

  def update
    respond_to do |format|
      if @players.update(players_params)
      format.html { redirect_to players_path }
      format.js
      format.json { render json: @player }
    end
    end
  end
end
