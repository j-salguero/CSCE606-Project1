Rails.application.routes.draw do 
  root 'activity_events#index'
  resources :activity_events
end
