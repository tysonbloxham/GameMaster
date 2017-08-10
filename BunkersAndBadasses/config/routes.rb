Rails.application.routes.draw do
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/characters/create" => "characters#create"
  root to: "characters#index"
end
