MeraLakshya::Application.routes.draw do
  devise_for :users
  resources :clubs
  resources :scores
  resources :users, path: :members
  root :to => 'application#index'
end
