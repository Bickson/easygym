class WorkoutExercise < ActiveRecord::Base
  attr_accessible :exercise_id, :workout_id

  belongs_to :exercise
  belongs_to :workout
end
