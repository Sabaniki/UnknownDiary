Rails.application.routes.draw do
  root 'diaries#index'
  resources :diaries
  resources :created_days
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
