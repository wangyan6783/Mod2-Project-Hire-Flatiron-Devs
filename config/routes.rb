Rails.application.routes.draw do
  root 'application#homepage'
  get '/about', to: "application#about"
  get '/signup', to: "application#signup"
  get '/jobs', to: "projects#index"
  # get '/reviews/new', to: "reviews#create", as: "new_review"
  resources :reviews, except: [:new]
  resources :projects
  resources :customers, except: [:destroy]
  resources :developers, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
