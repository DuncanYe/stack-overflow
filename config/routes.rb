Rails.application.routes.draw do
  devise_for :users

  root "questions#index"

  resources :questions do
    resources :answers, only: [:create, :destroy]
  end

  resources :users
  namespace :admin do
    root "questions#index"
    resources :questions, only: [:index, :destroy]
    resources :users, only: [:index, :update, :destroy]
  end
end
