Rails.application.routes.draw do
  get 'sessions/new'
  root   'tasks#index'
  get    '/edit/:id',      to: 'tasks#edit'
  get    '/new',           to: 'tasks#new'
  get    '/show/:id',      to: 'tasks#show'
  get    '/logged_in',     to: 'tasks#logged_in'
  get    '/not_logged_in', to: 'tasks#not_logged_in'
  get    '/signup',        to: 'users#new'
  get    '/login',         to: 'sessions#new'
  post   '/login',         to: 'sessions#create'
  delete '/logout',        to: 'sessions#destroy'
  get    '/static_pages/about', to:'static_pages#about'
  resources :users, only: [:new, :show, :create]
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
