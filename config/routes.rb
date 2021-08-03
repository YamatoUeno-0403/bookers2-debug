Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
   devise_for :users
  root to: 'homes#top'
   get 'home/about' => 'homes#about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
   resource :favorites, only: [:create,:destroy]
  end
 
  
 
end
