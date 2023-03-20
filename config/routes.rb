Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get 'pricing', to: 'static_pages#pricing'
  resources :posts
  post 'checkout', to: 'checkout#create'
  post 'billing_portal', to: 'billing_portal#create'
end
