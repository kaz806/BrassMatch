Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
  resources :perfumes, only: [:index, :new, :show, :create]
 

  get 'post/:step', to: 'posts#show', as: 'post'
post 'post/:step', to: 'posts#update'
get 'results', to: 'posts#result', as: 'results'


 root 'tweets#index'

 # config/routes.rb
resources :tweets do
  member do
    post 'like'
  end
end


end

