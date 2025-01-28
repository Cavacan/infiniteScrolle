Rails.application.routes.draw do
  namespace :admin do
    resources :dashboards, only: [:index]
  end
  resources :tweets
  root 'tweets#index'
end
