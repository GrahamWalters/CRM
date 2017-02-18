Rails.application.routes.draw do
  resources :customers do
    resources :addresses
  end
  root 'customers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
