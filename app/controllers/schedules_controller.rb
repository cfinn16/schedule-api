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
    render json: @schedule
  end

  def destroy
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.delete
  end

  private

  def schedule_params
    params.require(:schedule).permit(:name)
  end

end
