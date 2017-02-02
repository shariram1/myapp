Rails.application.routes.draw do
  get 'sessions/new'

  get     '/home',      to: 'static_pages#home'
  get     '/help',      to: 'static_pages#help'
  get     '/about',     to: 'static_pages#about'
  get     '/contact',   to: 'static_pages#contact'
  get     '/signup',    to: 'users#new'
  post    '/signup',    to: 'users#create'
  get     '/login',     to: 'sessions#new'
  post    '/login',     to: 'sessions#create'
  delete  '/logout',    to: 'sessions#destroy'

  #get 'welcome/index'
  resources :users
  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'welcome#index'
  root 'static_pages#home'
end
