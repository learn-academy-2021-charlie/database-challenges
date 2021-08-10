Rails.application.routes.draw do
  get '/cubed/:num_cubed' => 'main#cubed'
end

