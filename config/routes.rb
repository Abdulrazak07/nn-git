Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :protfolios
  get 'angular-item', to: "protfolios#angular"
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
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
