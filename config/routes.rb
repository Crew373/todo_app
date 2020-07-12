Rails.application.routes.draw do
  root 'tasks#index'
  get  '/edit/:id', to: 'tasks#edit'
  get  '/new',      to: 'tasks#new'
  get  '/show/:id', to: 'tasks#show'
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
