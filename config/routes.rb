# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts do
     member do
      put "like", to: "posts#upvote"
      put 'unlike', to: "posts#unvote"
     end
     resources :comments
  end
  resources :users

  root to: 'home#index'
end
