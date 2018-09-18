Rails.application.routes.draw do
  get 'flights/index'
  get 'flights/:id', to: 'flights#show', as: 'flight'
  root 'flights#index'

  resources :bookings, only: [:new, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
