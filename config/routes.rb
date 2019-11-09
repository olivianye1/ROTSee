Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  
  resources :cadets do
    resources :attendances
  end
  resources :events do
    resources :attendances
    post "attendances/:id/edit"    => "attendances#edit"
  end
  resources :attendances do
    post "attendances/:id/edit"    => "attendances#edit"
  end
  root 'sessions#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
