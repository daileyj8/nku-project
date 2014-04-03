NkuProject::Application.routes.draw do

  root "welcome#index"
  get "welcome/index"
  resources :games
  resources :users
  resources :sessions
end
