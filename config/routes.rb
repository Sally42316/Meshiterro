Rails.application.routes.draw do
  devise_for :users
  get 'homes/top'
  root to: "homes#about"
  get 'homes/about', to: 'homes#about', as: 'about'

  resources :post_images, only: [:new, :index, :show]

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
