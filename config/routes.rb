Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  #get 'welcome/index'
  resources :articles do
  	resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
