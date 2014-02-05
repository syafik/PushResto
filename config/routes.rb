PushFood::Application.routes.draw do
  devise_for :users
  
  resources :orders do
  member do
  get :get_order, :format => :json
  end
  end

  resources :products do
    collection do
      get :get_all, :format => :json

    end
  end

  get "home/index"

   root :to => 'home#index'

  
end
