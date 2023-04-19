# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  resources :menu_items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/menu_items_lang/:lang', to: 'menu_items#index_lang'
  # Defines the root path route ("/")

  resources :center_types, only: [:index, :create, :update, :destroy]
end
