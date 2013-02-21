Micromanage::Application.routes.draw do
  get "home/index"

  resources :users
  resources :costs

	root :to => "home#index"
end
