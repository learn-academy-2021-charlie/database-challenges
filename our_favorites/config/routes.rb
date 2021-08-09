Rails.application.routes.draw do
  get '/' => 'main#home'
  get '/sopranos' => 'arturo#sopranos'
  get '/swimming' => 'arturo#swimming'
  get '/warzone' => 'arturo#warzone'
  get '/hiking' => 'raul#hiking'
  get '/computer_games' => 'raul#computer_games'
  get '/driving' => 'raul#driving'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
