Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts do
    collection do
      post :confirm
    end
  end
end
