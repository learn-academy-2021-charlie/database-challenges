Rails.application.routes.draw do
  root 'main#favorites'
  get '/favorites' => 'main#favorites'
  get '/h_favorites' => 'heather#favoriteTop3'
  get '/t_favorites' => 'trey#favoriteTop3'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
