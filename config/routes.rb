Rails.application.routes.draw do


  resources :tracking_units, only: [:index, :show]

  resources :scheduler_dates, only: [:index]

  root to: 'tracking_units#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
