Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'guests#index'
  post 'guests/take_gift', to: 'guests#take', as: 'take_gift'
  post 'guests/create', to: 'guests#create', as: 'guests'
  get 'guests/destroy', to: 'guests#destroy', as: 'destroy_session'
end
