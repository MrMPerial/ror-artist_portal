Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # ROOT
  root 'pages#home'

  # GET
  get '/about' => 'pages#about'

  # DEVISE
  devise_for :users, controllers: { registrations: 'users/registrations' }

  #RESOURCES
  resources :contacts
  resources :users do
    resource :profile
  end
end
