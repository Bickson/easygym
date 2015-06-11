class Exercise < ActiveRecord::Base
  attr_accessible :description, :name, :picture

  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
end
