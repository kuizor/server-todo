Rails.application.routes.draw do
 resources :cliente, only: [:index, :create, :show, :update, :destroy] 
end
