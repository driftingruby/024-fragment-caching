Rails.application.routes.draw do
  resources :stories
  root to: 'stories#index'
end
