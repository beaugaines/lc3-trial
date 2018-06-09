Rails.application.routes.draw do
  devise_for :users
  resources :texts, only: [:index, :show]

  authenticated :user do
    root 'texts#index', as: :authenticated_root
  end

  root 'application#index'
end
