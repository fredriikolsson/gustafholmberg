# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resource :welcome, only: :index
  resource :about, only: :show, controller: 'about'
end
