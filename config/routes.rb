Ayoopa::Application.routes.draw do
  resources :meeting_locations


  resources :preferences


  resources :addresses


  resources :items


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end