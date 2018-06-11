Rails.application.routes.draw do
  devise_for :users
  resources :texts, only: [:index, :show] do
    resources :highlights
  end

  get 'my-litcharts/notes', to: 'highlights#index', as: :notes

  authenticated :user do
    root 'texts#index', as: :authenticated_root
  end

  root 'application#index'
end
