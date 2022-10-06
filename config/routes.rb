Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :bookmarks, only: [:destroy]
  resources :lists, only: [:create, :destroy, :new, :show, :index] do
    resources :bookmarks, only: [:create, :new ]
  end
end
