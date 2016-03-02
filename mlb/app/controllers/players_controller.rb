require 'pry'
class PlayersController < ApplicationController

  def index

    # if params[:age]
      @age = Player.search(params[:age])
    # else
      # @age = Player.first

    # if params[:search1]
      @players = Player.search(params[:search1])
    # else
      # @players = Player.first
    # end

    # if params[:search2]
      @player_two = Player.search(params[:search2])
    # else
      # @player_two = Player.last
    # end
   # end
  end

  # def comparePlayers
  #   @cost_data = (params[:search1], params[:search2])
  #   if @players.blank?
  #     render :text => "record_not_found"
  #   else
  #     render @players
  #   end
  # end

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
