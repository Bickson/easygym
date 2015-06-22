class WorkoutSessionsController < ApplicationController

  def index
    @workout_sessions = WorkoutSession.all
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    @workout_session = WorkoutSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workout_session }
    end
  end

  # GET /workout_sessions/new
  # GET /workout_sessions/new.json
  def new
    @workout_session = WorkoutSession.new
    @workouts = Workout.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout_session }
    end
  end

  # GET /workout_sessions/1/edit
  def edit
    @workout_session = WorkoutSession.find(params[:id])
  end

  # POST /workout_sessions
  # POST /workout_sessions.json
  def create
    @workout_session = WorkoutSession.new(params[:workout_session])

    respond_to do |format|
      if @workout_session.save
        format.html { redirect_to workout_sessions_path, notice: 'workout_session was successfully created.' }
        format.json { render json: @workout_session, status: :created, location: @workout_session }
      else
        format.html { render action: "new" }
        format.json { render json: @workout_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workout_sessions/1
  # PUT /workout_sessions/1.json
  def update
    @workout_session = WorkoutSession.find(params[:id])

    respond_to do |format|
      if @workout_session.update_attributes(params[:workout_session])
        format.html { redirect_to @workout_session, notice: 'workout_session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workout_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_sessions/1
  # DELETE /workout_sessions/1.json
  def destroy
    @workout_session = WorkoutSession.find(params[:id])
    @workout_session.destroy

    respond_to do |format|
      format.html { redirect_to workouts_url }
      format.json { head :no_content }
    end
  end

end
