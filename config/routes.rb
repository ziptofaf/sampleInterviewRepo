Rails.application.routes.draw do
  resources :tasks
  resources :teams, except: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
