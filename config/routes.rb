Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root 'splashs#index'
  resources :groups, only: [:index, :show, :new, :create]
end
