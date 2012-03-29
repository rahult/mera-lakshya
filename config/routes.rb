MeraLakshya::Application.routes.draw do
  devise_for :users

  resources :clubs

  resources :scores

  root :to => 'application#index'
end
