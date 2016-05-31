class PlayersController < ApplicationController

  def ajax

    player1 = Player.find_by({ age: params['age'], name: params['player1'].titleize })

    player2 = Player.find_by({ age: params['age'], name: params['player2'].titleize })

    render :json => [ player1, player2 ]

  end

end
