class AppointmentsController < ApplicationController

  def create
    @appointment = Appointment.create(name: params[:appointment][:name], start_time: params[:appointment][:start_time], end_time: params[:appointment][:end_time], schedule_id: params[:schedule_id])

    if @appointment.valid?
      render json: @appointment
    else
      render json: @appointment.errors
    end
  end

end
