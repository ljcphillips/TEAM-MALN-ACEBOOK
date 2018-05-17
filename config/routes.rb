# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts do
    resources :comments
  end
  resources :users do
    resources :messages
  end
  root to: 'home#index'
end
