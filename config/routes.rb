Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create] # YOU ONLY NEST IF YOU NEED TO KNOW THE ID OF THE PARENT
  end
end
