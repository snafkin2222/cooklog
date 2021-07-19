Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'users/show'
  get 'users/index'
  get    :login,     to: 'sessions#new'
  post   :login,     to: 'sessions#create'
  delete :logout,    to: 'sessions#destroy'
  root 'static_pages#home'
  get :signup,       to: 'users#new'
  resources :users
  resources :dishes
  get :about,        to: 'static_pages#about'
  get :use_of_terms, to: 'static_pages#terms'
end