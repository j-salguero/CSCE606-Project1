Rails.application.routes.draw do 
  resources :activities
  resources :users
  resources :activity_events
  root :to => redirect('/activity_events')
end
