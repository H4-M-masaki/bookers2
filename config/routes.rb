Rails.application.routes.draw do
  
  root to: 'homes#top'
  devise_for :users
  
  resources :books, only: [:new, :edit, :create, :index, :show, :destroy]
  
  resources :users, only: [:show, :edit, :update, :index]
  get '/homes/about' => 'homes#about', as: 'about'
  
  patch 'books/:id' => 'books#create',as: 'create_book'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
