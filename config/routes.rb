Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "products#index"
  resources :products do
    collection do
      get 'search'
    end
  end
  
  resources :search_queries, only: :index
end
