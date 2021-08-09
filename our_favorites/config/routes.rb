Rails.application.routes.draw do
  root 'main#welcome'
  # get "/" => 'main#welcome'
  get '/alfonso/movies' => 'alfonso#movies'
  get '/thomas/movies' => 'thomas#movies'
  get '/the_departed' => 'thomas#the_departed'
  get '/hercules' => 'thomas#hercules'
  get '/boondock_saints' => 'thomas#boondock_saints'
  get '/nacho_libre' => 'alfonso#nacho_libre'
  get '/the_mummy' => 'alfonso#the_mummy'
  get '/ten_things_i_hate_about_you' => 'alfonso#ten_things_i_hate_about_you'
end
