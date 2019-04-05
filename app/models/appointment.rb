class Appointment < ApplicationRecord
  belongs_to :schedule
  validate :end_time_must_be_greater_than_start_time

  def end_time_must_be_greater_than_start_time
    if end_time < start_time
      errors.add(:end_time, "must be greater than start time")
    end
  end

end
