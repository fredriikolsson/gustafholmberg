# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'welcome#show'

  resource :welcome, only: :show
  resource :about, only: :show, controller: 'about'
  resource :contact, only: :show, controller: 'contact'

  resources :posts
end
