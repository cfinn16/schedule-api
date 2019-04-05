# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Schedule.create(name: 'Schedule 1')
Schedule.create(name: 'Schedule 2')
Schedule.create(name: 'Schedule 3')

Appointment.create(name: 'Meeting', start_time: 10, end_time: 15, schedule_id: 1)
Appointment.create(name: 'Meeting', start_time: 20, end_time: 30, schedule_id: 1)
Appointment.create(name: 'Meeting', start_time: 25, end_time: 32, schedule_id: 1)
