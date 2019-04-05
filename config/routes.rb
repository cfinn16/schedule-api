Rails.application.routes.draw do
  resources :schedules

  post 'schedules/:schedule_id/appointments', to: 'appointments#create'

  delete 'schedules/:id/appointments/:appointment_id', to: 'schedules#remove_appointment'

end
