Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] do
    get 'settings', on: :collection
  end
  resources :comments
  resources :categories do
    get 'settings', on: :collection
  end
  resources  :blogs do
    get 'settings', on: :collection
  end  
  get '/', to: "blogs#index"
  resources :images, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
