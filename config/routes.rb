Rails.application.routes.draw do 
  root 'activity_events#index'
  resources :activities
  resources :users
  resources :activity_events
end
