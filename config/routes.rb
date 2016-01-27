Rails.application.routes.draw do
  resources :users
  get 'welcome/index'

  resources :events

end
