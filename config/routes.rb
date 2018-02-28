Rails.application.routes.draw do

  get 'scheduler_dates/index'

  resources :tracking_units, only: [:index, :show]

  resources :scheduler_dates, only: [:index]

  root to: 'tracking_units#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
