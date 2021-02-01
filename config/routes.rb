Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  
  resources :posts do
    resources :questions
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
