class Appointment < ApplicationRecord
  belongs_to :schedule

  validates :end_time, numericality: { greater_than: :start_time}
end
