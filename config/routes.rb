Rails.application.routes.draw do
  get 'sheets/index'
  namespace :admin do
    resources :movies, only: [:new, :index, :create, :update, :destroy]
    get 'movies/:id' => 'movies#edit', as: :edit_movie
  end
  get 'movies' => 'movies#index'
  get 'sheets' => 'sheets#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
