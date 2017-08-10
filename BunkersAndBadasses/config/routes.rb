Rails.application.routes.draw do
  resources :mechromancers
  resources :psychos
  resources :gunzerkers
  resources :commandos
  resources :assassins
  resources :sirens
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'characters#index'
end
