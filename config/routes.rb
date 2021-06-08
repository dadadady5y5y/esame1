Rails.application.routes.draw do
  resources :forums
  devise_for :users
  resources :tours
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get  '/index', to: 'home#index', as:'index'
get   '/posti',to: 'tours#index', as:'posti'
root 'home#index'
end
