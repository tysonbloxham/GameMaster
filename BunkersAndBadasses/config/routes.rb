Rails.application.routes.draw do
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'characters#index'
end