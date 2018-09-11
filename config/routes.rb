Rails.application.routes.draw do
  root 'application#homepage'
  resources :reviews
  resources :project_languages
  resources :languages
  resources :projects
  resources :customers
  resources :developers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
