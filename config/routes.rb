Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users/:id", to: "users#show", as: "user"
  resources :user_instruments, only: [:create, :update, :destroy]
end
