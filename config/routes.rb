Rails.application.routes.draw do
  root to: 'cocktails#index'

  # get "cocktails", to: "cocktails#index", as: :cocktails
  # get "cocktails/new", to: "cocktails#new", as: :cocktails_new

  resources :cocktails do
    resources :ingredients, only: [ :index, :new, :create ]
    resources :doses, only: [ :index, :new, :create ]
  end
  # resources :reviews, only: [ :show, :edit, :update, :destroy ]
end
