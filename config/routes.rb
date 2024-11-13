Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end


  resources :users, only: [:show, :edit, :update]
  post 'post_images' => 'post_images#create'

  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  delete 'post_images/:id' => 'post_images#destroy', as: 'destroy_post_image'
end
