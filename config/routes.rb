Rails.application.routes.draw do
  devise_for :users
  get 'homes/top'
  root to: "homes#about"
  get 'homes/about', to: 'homes#about', as: 'about'

  post 'post_images' => 'post_images#create'

  resources :post_images, only: [:new, :create, :index, :show]

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
