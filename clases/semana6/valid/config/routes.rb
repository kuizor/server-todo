Rails.application.routes.draw do
  resources :bills, only:[:index, :create, :show] do
    match '*a', :to => 'errors#routing', via: :get
  end
  match '*a', :to => 'errors#routing', via: :get
end
