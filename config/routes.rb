Rails.application.routes.draw do
  devise_for :users
  root "boats#index"
  resources :boats, except: :index do
    resources :rentals, only: [:new, :create]
  end
  resources :rentals, only: [:index, :show, :edit, :update, :cancel]
end