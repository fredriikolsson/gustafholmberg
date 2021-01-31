# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#show'

  resource :welcome, only: :show
  resource :about, only: :show, controller: 'about'
  resource :contact, only: :show, controller: 'contact'
end
