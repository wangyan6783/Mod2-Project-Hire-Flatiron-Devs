Rails.application.routes.draw do
  root 'application#homepage'
  get '/about', to: "application#about"
  get '/signup', to: "application#signup"
  get '/jobs', to: "projects#index"
  resources :reviews, except: [:destroy]
  resources :projects
  resources :customers, except: [:destroy]
  resources :developers, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
