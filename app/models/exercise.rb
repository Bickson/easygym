class Exercise < ActiveRecord::Base
  attr_accessible :description, :name, :picture, :cycles_attributes

  has_many :cycles
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises

  accepts_nested_attributes_for :cycles, :allow_destroy => true
end
