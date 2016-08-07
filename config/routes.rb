Rails.application.routes.draw do
  authenticate :user do
    resources :items, only: [:show, :new, :create, :edit, :update, :destroy]
  end
  
    devise_for :users
    resources :items do
      member do
        patch :complete
      end
    end
    root 'items#index'
  end
