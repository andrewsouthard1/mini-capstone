Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'comics#index'
  get '/comics' => 'comics#index'
  get '/comics/:id' => 'comics#show'
end
