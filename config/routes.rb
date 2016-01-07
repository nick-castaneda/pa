Rails.application.routes.draw do

  # API
  namespace :api do
    resources :transcripts, only: [:index, :show]
  end

  # Routes for users
  root 'users#home'
  get 'users/index' => 'users#index', as: :users

  get 'users/new' => 'users#new', as: :new_user
  post 'users/new' => 'users#create'

  get 'users/:id' => 'users#show', as: :user

  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'

  delete 'users/:id' => 'users#destroy', as: :destroy_user

  # Routes for sessions
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  # Routes for transcripts
  get 'transcripts/new' => 'transcripts#new', as: :new_transcript
  post 'transcripts/' => 'transcripts#create' # fix with transcripts/:id

  delete 'transcripts/:id' => 'transcripts#destroy'

  get 'transcripts/index' => 'transcripts#index', as: :transcript_index

  get 'transcripts/:id' => 'transcripts#show', as: :transcript

  # Routes for annotations
  get 'annotations/:start/:end/new' => 'annotations#new', as: :new_annotation
  post 'annotations/' => 'annotations#create'

  delete 'annotations/:id' => 'annotations#destroy'

  get 'annotations/:id' => 'annotations#show', as: :annotation






end
