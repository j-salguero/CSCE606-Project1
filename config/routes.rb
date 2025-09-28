Rails.application.routes.draw do 
  resources :activity_events
  root :to => redirect('/activity_events')
end
