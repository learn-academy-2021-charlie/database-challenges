Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cubed/:number' => 'main#cube'

  get '/evenly_divisble/:num1/:num2' => 'main#evenly_divisble' 
end
