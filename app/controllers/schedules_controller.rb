class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  def create
    @schedule = Schedule.create(schedule_params)
    render json: @schedule
  end

  def show
    @schedule = Schedule.find_by(id: params[:id])
    render json: @schedule, include: 'appointments'
  end

  def destroy
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.delete
  end

  def remove_appointment
    @schedule = Schedule.find_by(id: params[:id])
    @appointment = @schedule.appointments.find_by(id: params[:appointment_id])
    puts "Going to delete #{@appointment.name}"
    @appointment.delete
  end

  private

  def schedule_params
    params.require(:schedule).permit(:name)
  end

end
