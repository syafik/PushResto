PushFood::Application.routes.draw do
  devise_for :users
  
  resources :orders

  resources :products do
    collection do
      get :get_all, :format => :json
    end
  end

  get "home/index"

   root :to => 'home#index'

  
end
