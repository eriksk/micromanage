Micromanage::Application.routes.draw do
  post "authentication/login"
  post "authentication/logout"

  get "home/index"

  resources :users
  resources :costs

	root :to => "home#index"
end
