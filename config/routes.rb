Rails.application.routes.draw do
  root 'players#index'
  devise_for :users

  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :players
    end
  end
end
