# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    devise_for :root_users
  end
  namespace :api do
    resources :employee do
      resources :occupations
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
