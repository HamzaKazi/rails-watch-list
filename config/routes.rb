Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  resources :lists do
    resources :show, :new, :index
  end

  # resources :bookmarks do
  #   resources :new, :create, :destroy, :show
  # end
  resources :bookmarks do
    resources :index, :new
  end

  root to: "articles#index"
  resources :articles, except: :index

end
