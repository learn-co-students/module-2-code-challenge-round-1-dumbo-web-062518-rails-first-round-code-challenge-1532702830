Rails.application.routes.draw do
  root 'heroines#index'
  get "heroines/search", to: 'heroines#search', as: 'search'

  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create, :edit, :update]
end
