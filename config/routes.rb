Rails.application.routes.draw do
  resources :cadets
  root 'cadets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
