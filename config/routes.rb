Rails.application.routes.draw do
  get 'tracting_units/index'

  get 'tracting_units/show'

  root to: 'tracting_units#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
