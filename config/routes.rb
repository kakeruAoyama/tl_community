Rails.application.routes.draw do
  get 'evaluations/new'
  get 'evaluations/create'
  get 'evaluations/edit'
  get 'evaluations/update'

  get 'comments/create'
  get 'comments/destroy'
  
  get 'lectures/index'
  get 'lectures/show'
  
  get 'top/about'
  get 'top/index'
  
  get 'questions/new' => 'questions#new'
  post 'questions/create' => 'questions#create'
  get 'questions/:id' => 'questions#show', as: 'question'
  patch 'questions/:id' => 'questions#update'
  delete 'questions/:id' => 'questions#destroy'
  get 'questions/:id/edit' => 'questions#edit', as:'edit_question'
  
  devise_for :users
  resources :users, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :questions do
    resources :answers, only: [:create]
  end

  resources :lectures
  resources :top

  root 'top#about'

end