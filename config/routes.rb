Rails.application.routes.draw do
  root 'welcomes#index'

  get 'welcomes/conferences'
  get 'welcomes/graduations'
  get 'welcomes/futureprojects'

  resources :projects
end
