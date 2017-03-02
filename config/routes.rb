Rails.application.routes.draw do
  get 'reports/index'
  get 'reports/contacts'
  get 'reports/user_tracking'

  get 'home/index'

  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
