Micromanage::Application.routes.draw do
  resources :costs

	root :to => "costs#index"
end
