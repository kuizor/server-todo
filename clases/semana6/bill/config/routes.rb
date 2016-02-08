Rails.application.routes.draw do
	resources :customers, only: [:index, :create, :show, :update, :destroy] do
		resources :orders, only: [:index, :create, :show, :update, :destroy] do
			resources :order_details, only: [:index, :create, :show, :update, :destroy]
		end
	end


  	resources :customers, only: [:index, :create, :show, :update, :destroy]
  	resources :products, only: [:index, :create, :show, :update, :destroy]
  	resources :payments, only: [:index, :create, :show, :update]
  	resources :orders, only: [:index, :create, :show, :update, :destroy]
  	resources :order_details, only: [:index, :create, :show, :update, :destroy]
  	match '*a', :to => 'errors#routing', via: :get
end
