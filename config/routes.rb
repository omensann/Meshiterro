Rails.application.routes.draw do

  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show]
  get '/about' => 'homes#about'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end