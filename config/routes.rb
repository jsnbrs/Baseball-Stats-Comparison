Rails.application.routes.draw do

  root 'players#index'

  get '/players/:age/:player1/:player2' => 'players#ajax'

  resources :players, only: [:index, :show]

end
