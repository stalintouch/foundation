Rails.application.routes.draw do
  root 'welcomes#index'

  get 'welcomes/conferences'
  get 'welcomes/graduations'
  get 'welcomes/futureprojects'
  get 'welcomes/contact'
  get 'welcomes/charityevents'
  get 'welcomes/donate'

  resources :projects
end
