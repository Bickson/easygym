class WorkoutSessionsController < ApplicationController

  def index
    @sessions = WorkoutSession.all
  end

end
