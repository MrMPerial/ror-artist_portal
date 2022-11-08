Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"

  get '/about' => 'pages#about'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :contacts
  resources :users do
    resource :profile
  end
end
