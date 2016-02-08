Rails.application.routes.draw do
  resource :users, only: [:index, :create, :show, :update, :destroy] #haga todos los recursos de users
end
