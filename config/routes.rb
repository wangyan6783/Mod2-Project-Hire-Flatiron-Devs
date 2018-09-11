Rails.application.routes.draw do
  root 'application#homepage'
  get '/about', to: "application#about"
  get '/signup', to: "application#signup"
  get '/jobs', to: "projects#index"

  get "/developer_login", to: "sessions#new_developer", as: "developer_login"
  get "/customer_login", to: "sessions#new_customer", as: "customer_login"
  post "/developer_login", to: "sessions#create_developer"
  post "/customer_login", to: "sessions#create_customer"
  delete "/developer_logout", to: "sessions#developer_destroy", as: "developer_logout"
  delete "/customer_logout", to: "sessions#customer_destroy", as: "customer_logout"

  resources :reviews, except: [:new]
  resources :projects
  resources :customers, except: [:destroy]
  resources :developers, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
