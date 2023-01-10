Rails.application.routes.draw do
  root "static_pages#home"
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
end
