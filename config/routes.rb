Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items do
  resources :order
    end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html





