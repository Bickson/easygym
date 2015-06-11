class Cycle < ActiveRecord::Base
  attr_accessible :reps, :sets, :exercise_id, :exercises_attributes

  belongs_to :exercise
end
