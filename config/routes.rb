NkuProject::Application.routes.draw do

  root "welcome#index"
  get 'games/manage', to: "games#manage", as: :games_manage
  get 'games/about', to: "games#about", as: :games_about
  get 'games/soon', to: "games#soon", as: :games_soon
  get "welcome/index"
  resources :games
  resources :users
  resources :sessions
  resources :users do 
    resources :lists
  end
  resources :games do
    collection { post :add }
  end
  resources :games do
    collection { post :import }
  end
end
