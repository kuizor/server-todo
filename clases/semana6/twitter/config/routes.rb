Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show, :update, :destroy] do
    resources :profiles, only: [:index, :create, :show, :update, :destroy] do
    	resources :follows, only: [:index, :create, :show, :update, :destroy]
    	resources :tweets, only: [:index, :create, :show, :update, :destroy]
    end
  end
  resources :tweets, only: [:index, :create, :show, :update, :destroy]
  resources :follows, only: [:index, :create, :show, :update, :destroy]
  resources :users, only: [:index, :create, :show, :update, :destroy]
  resources :profiles, only: [:index, :create, :show, :update, :destroy]
end
