Rails.application.routes.draw do
  root 'main#welcome'
  # get "/" => 'main#welcome'
  get '/alfonso/movies' => 'alfonso#movies'
end
