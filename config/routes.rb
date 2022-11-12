Rails.application.routes.draw do
  resources :tickets
  resources :employees
  resource :assign
  devise_for :users

  root 'home#index'

  get "/landing", to: 'tickets#landing'
  get "/slanding", to: 'tickets#slanding'
  get "/assign", to: 'tickets#assign'
  
  get "/assign/:id", to: 'tickets#assignid'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
