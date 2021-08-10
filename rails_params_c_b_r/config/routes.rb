Rails.application.routes.draw do
  get '/:number' => 'main#cubed'
end
