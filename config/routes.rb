Rails.application.routes.draw do 
  resources :users
  resources :activity_events
  root :to => redirect('/activity_events')
end
