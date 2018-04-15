Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  # get '/index' => 'home#index'
  get '/attack' => 'home#attack'
  get '/defense' => 'home#defense'

end
