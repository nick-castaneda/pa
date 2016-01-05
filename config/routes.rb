Rails.application.routes.draw do

  # Routes for users
  root 'users#home'
  get 'users/index' => 'users#index', as: :users

  get 'users/new' => 'users#new', as: :new_user
  post 'users/:id' => 'users#create'

  get 'users/:id' => 'users#show', as: :user

  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'

  delete 'users/:id' => 'users#destroy', as: :destroy_user

  # Routes for sessions
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  # Routes for transcripts
  post 'transcripts' => 'transcripts#create'

  delete 'transcripts/:id' => 'transcripts#destroy'

end
