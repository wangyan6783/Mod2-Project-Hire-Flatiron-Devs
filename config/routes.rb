Rails.application.routes.draw do
  root 'homes#homepage'
  get '/about', to: "homes#about"
  get '/jobs', to: "projects#index"
  get '/signup', to: "homes#signup"

  get "/developer_login", to: "sessions#new_developer", as: "developer_login"
  get "/customer_login", to: "sessions#new_customer", as: "customer_login"
  post "/developer_login", to: "sessions#create_developer"
  post "/customer_login", to: "sessions#create_customer"
  delete "/logout", to: "sessions#destroy", as: "logout"

  resources :reviews, except: [:new]
  resources :projects
  resources :customers, except: [:destroy]
  resources :developers, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
