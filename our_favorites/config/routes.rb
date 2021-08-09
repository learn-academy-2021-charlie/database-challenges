Rails.application.routes.draw do
  get '/' => 'main#main'
  get '/naruto' => 'brian#naruto'
  get '/demon_slayer' => 'brian#demon_slayer'
  get '/sword_art_online' => 'brian#sword_art_online'
  get '/haikyuu' => 'kelen#haikyuu'
  get '/your_lie_in_april' => 'kelen#your_lie_in_april'
  get '/one_punch_man' => 'kelen#one_punch_man'
end
