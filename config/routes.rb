Rails.application.routes.draw do
  resources :diaries
  root 'diaries#index'
  resources :created_days
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
