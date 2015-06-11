class WorkoutSession < ActiveRecord::Base
  attr_accessible :performed_at, :workout_id

  belongs_to :workout
end
