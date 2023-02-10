Rails.application.routes.draw do
  resources :protfolios
  get 'angular-item', to: "protfolios#angular"
  get 'about', to: 'pages#home'
  get 'contact', to: 'pages#home'
  resources :blogs

  root to: 'pages#home'

  resources :blogs do
    member do
      post :toggle_status
    end
  end






  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
