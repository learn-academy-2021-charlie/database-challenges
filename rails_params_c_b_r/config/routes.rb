Rails.application.routes.draw do
  get '/:number' => 'main#cubed'
  get 'evenly/:number1/:number2' => 'main#evenly'
  get 'length/:string' => 'main#length'
end
