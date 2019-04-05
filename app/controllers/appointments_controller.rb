class AppointmentsController < ApplicationController

  def create
    @appointment = Appointment.create(appointment_params)

    if @appointment.valid?
      render json: @appointment
    else
      render json: @appointment.errors
  end

  private

  def appointment_params
    params.require(:appointment).permit(:name, :start_time, :end_time, :schedule_id)
end
