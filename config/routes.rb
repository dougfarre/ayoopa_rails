Ayoopa::Application.routes.draw do
  resources :renter_settings


  resources :user_meeting_locations


  resources :user_addresses


  resources :meeting_locations


  resources :preferences


  resources :addresses


  resources :items


  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"

  devise_for :users, 
    :controllers => { 
      :registrations => :registrations,
      :omniauth_callbacks => "users/omniauth_callbacks"
    }

  resources :users
  
end
