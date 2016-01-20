Rails.application.routes.draw do
  get 'welcome/index'

  resources :events

end
