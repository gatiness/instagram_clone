Rails.application.routes.draw do
  root 'tops#index'
  get 'tops/index'
  mount LetterOpenerWeb::Engine, at: "/inbox" if Rails.env.development?
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy, :index]
  resources :posts do
    collection do
      post :confirm
    end
  end
end
