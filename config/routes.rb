Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists do
    resources :show, :new, :index
  end

  # resources :bookmarks do
  #   resources :new, :create, :destroy, :show
  # end
  resources :bookmarks do
    resources :index, :new
  end
end
