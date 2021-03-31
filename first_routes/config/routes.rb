Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users

  get 'users/:id', to: 'users#show', as: 'users'  #  users#show
  post 'users', to: 'users#create'   #  users#create
  get 'users', to: 'users#index', as: 'user'     #  users#index
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'     #  users#edit
  get 'users/new', to: 'users#new', as: 'new_user'     #  users#new
  patch 'users/:id', to: 'users#update'     #  users#update
  put 'users/:id', to: 'users#update'     #  users#update
  delete 'users/:id', to: 'users#destroy'    #  users#destroy



end
