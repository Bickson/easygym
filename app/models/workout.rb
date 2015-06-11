class Workout < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :workout_sessions
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises

  accepts_nested_attributes_for :exercises, :allow_destroy => true
end
