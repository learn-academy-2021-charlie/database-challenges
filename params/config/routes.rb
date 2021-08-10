Rails.application.routes.draw do
  get '/cubed/:number' => 'main#cubed'
  get '/' => 'main#home'
  get '/evenly/:number1/:number2' => 'main#evenly'
  get '/length/:string' => 'main#length'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
