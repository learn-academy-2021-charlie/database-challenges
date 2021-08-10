Rails.application.routes.draw do
  root 'main#home'
  get '/cubed/:number' => 'main#cubed'
  get '/evenly/:number1/:number2' => 'main#evenly'
  get '/length/:string' => 'main#length'
  get '/palindrome/:string' => 'main#palindrome'
  get '/madlibs/:noun/:verb/:adj/:adv' => 'main#madlibs'
end
