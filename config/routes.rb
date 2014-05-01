NkuProject::Application.routes.draw do

  root "welcome#index"
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
end
