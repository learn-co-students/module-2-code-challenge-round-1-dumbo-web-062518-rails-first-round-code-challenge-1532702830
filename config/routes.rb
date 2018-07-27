Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :search]
  resources :heroines, only: [:index, :show, :new, :create, :search]

  get '/search', to: "heroines#search"
end
