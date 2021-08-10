Rails.application.routes.draw do
  get '/cubed/:number' => 'main#cubed'
  get '/evenly/:number1/:number2' => 'main#evenly'
  get '/length/:string' => 'main#length'
  get '/palindrome/:string' => 'main#palindrome'

  get '/madlib/:string1/:string2/:string3/:string4' => 'main#madlib'



end
