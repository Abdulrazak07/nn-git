Rails.application.routes.draw do
  resources :protfolios
  get 'about', to: 'pages#home'
  get 'contact', to: 'pages#home'
  resources :blogs

  root to: 'pages#home'







  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
