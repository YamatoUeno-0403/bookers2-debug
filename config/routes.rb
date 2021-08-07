Rails.application.routes.draw do

   devise_for :users
  root to: 'homes#top'
   get 'home/about' => 'homes#about'
   
  resources :books,only: [:index, :show, :edit, :create, :destroy, :update] do
   resource :favorites, only: [:create,:destroy]
   resources :book_comments, only: [:create, :destroy]
  end
 resources :users,only: [:show,:index,:edit,:update] do
     member do
      get :following, :followers
    end
  end
  resources :relationships,only: [:create, :destroy]
  
 
end
