Rails.application.routes.draw do
  # Resources
  resources :usertracks
  resources :contacts

  # Home
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
