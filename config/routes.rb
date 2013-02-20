Micromanage::Application.routes.draw do
  resources :users

  resources :costs

	root :to => "costs#index"
end
