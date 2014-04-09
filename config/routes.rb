NkuProject::Application.routes.draw do

  root "welcome#index"
  get 'games/soon', to: "games#soon", as: :games_soon
  get "welcome/index"
  resources :games
  resources :users
  resources :sessions
  
  
end
