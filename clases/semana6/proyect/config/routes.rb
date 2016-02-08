Rails.application.routes.draw do
  resources :bills, only: [:index, :create, :show, :update, :destroy]
  match '*a', :to => 'errors#routing', via: :get
end
