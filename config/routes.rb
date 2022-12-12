Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }, path_names: { sign_in: 'login', sign_out: 'logout', registration: 'signup' }, controllers: { sessions: 'sessions' }

  resource :user, only: [:show, :update]

  resources :tasks
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
