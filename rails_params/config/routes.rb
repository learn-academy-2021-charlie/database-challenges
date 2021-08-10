Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'main#home'
  get '/cubed/:number' => 'main#cubed'
  get '/evenly/:number1/:number2' => 'main#evenly'
  get '/length/:string' => 'main#length'
  get '/palindrome/:string' => 'main#palindrome'
  get '/madlib/:noun/:adjective/:adverb/:verb' => 'main#madlib'
end
