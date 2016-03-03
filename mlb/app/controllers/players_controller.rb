require 'pry'
class PlayersController < ApplicationController

  def index
    # params[:age] = 28, params[:search1] = "Babe Ruth", params[:search2] = "Ted Williams" if params[:age].blank?
    # @age = Player.search(params[:age])
    # @player1 = Player.search(params[:search1]).limit(2)
    # @player2 = Player.search(params[:search2]).limit(2)
    # @agePlayer1 = Player.find_by(name: params[:search1], age: params[:age])
    # @agePlayer2 = Player.find_by(name: params[:search2], age: params[:age])
     #found here: http://stackoverflow.com/questions/3936621/rails-find-by-with-2-fields
  end

  # end

  def show
    @age = Player.find(params[:age])
    @player1 = Player.find(params[:search1])
    @player2 = Player.find(params[:search2])

    # redirect_to "/players"
  end

  def ajax

    # response = { :age => @age, :player1 => @player1, :player2 => @player2 }
    # this is for format.json not working yet
    # Search DB with params[:age], params[:player1], params[:player2]
    # Player.where(name= params, age = params)
    # Structure all player data into one object called response
    # response = {Mookie Betts: {hr: , hits, }, Ted Williams: {}}
    # render json: response


    #@players = Player.all(:order => 'position')
    player1 = Player.find_by({ age: params['age'], name: params['player1'] })
    player1.age = player1.age.to_i
    player2 = Player.find_by({ age: params['age'], name: params['player2'] })
    player2.age = player2.age.to_i
    render :json => [ player1, player2 ]
end


end
