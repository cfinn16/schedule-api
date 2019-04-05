Rails.application.routes.draw do
  resources :schedules

  post 'schedules/:id/appointments', to: 'appointments#create'

end
