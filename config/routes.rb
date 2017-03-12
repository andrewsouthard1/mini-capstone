Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'comics#index'
  get '/comics' => 'comics#index'
  get '/comics/new' => 'comics#new'
  post '/comics' => 'comics#create'
  get '/comics/:id' => 'comics#show'
  get '/comics/:id/edit' => 'comics#edit'
end
