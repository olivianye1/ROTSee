Rails.application.routes.draw do
  resources :cadets do
    resources :attendances
  end
  resources :events do
    resources :attendances
  end
  resources :attendances
  root 'cadets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
