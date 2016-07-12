Rails.application.routes.draw do

  root 'static_pages#home'

  get 'home' => "static_pages#home"

  get 'contact' => 'static_pages#contact'

  get 'help' => 'static_pages#help'

  get 'about' => 'static_pages#about'

  get 'signup' => 'users#new'

  post 'signup' => 'users#create'

  resources :users

  get    'login'   => 'sessions#new'

  post   'login'   => 'sessions#create'
  
  delete 'logout'  => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
