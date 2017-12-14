Rails.application.routes.draw do

  devise_for :users, :path  => '', :path_names => { :sign_in => 'login', :sign_out => 'logout', :edit => 'Profile' }
  resources :users
  resources :products
  resources :categories
  get 'pages/home'

  get 'pages/about'
  root to: 'pages#home', as: :root

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
