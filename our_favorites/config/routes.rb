Rails.application.routes.draw do
  get '/' => 'main#home'
  get '/amanda' => 'amanda#amanda_foods'
  get '/lasagna' => 'amanda#lasagna'
  get '/tacos' => 'amanda#tacos'
  get '/cheesefries' => 'amanda#cheesefries'
end
