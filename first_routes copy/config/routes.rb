Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/users', to: 'users#index', as: 'index' 
  # get '/users/:id', to: 'users#show', as: 'user'
  # post '/users', to: 'users#create', as: 'create'
  # get '/users/new', to: 'users#new', as: 'new'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit'
  # patch '/users/:id', to: 'users#update', as: 'update'
  # delete '/users/:id', to: 'users#destroy', as: 'delete'   
  resources :users, only: [:create, :destroy, :index, :show, :update]

  resources :artworks, only: [:create, :destroy, :index, :show, :update]
  
  resources :artwork_shares, only: [:create, :destroy]
end
