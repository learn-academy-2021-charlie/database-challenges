Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'main#landing'
  get 'the_olive_garden' => 'main#the_olive_garden'
  get 'buffalo_wild_wings' => 'main#buffalo_wild_wings'
  get 'cheesecake_factory' => 'main#cheesecake_factory'
  get 'pizza_port' => 'main#pizza_port'
  get 'sushi_house' => 'main#sushi_house'
  get 'in_n_out' => 'main#in_n_out'
end
