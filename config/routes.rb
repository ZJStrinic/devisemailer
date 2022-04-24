Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :articles
  root to: 'pages#index'
  get 'pages/contact'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do  
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  # Defines the root path route ("/")
  # root "articles#index"
end
