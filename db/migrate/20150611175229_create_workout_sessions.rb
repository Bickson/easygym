class CreateWorkoutSessions < ActiveRecord::Migration
  def change
    create_table :workout_sessions do |t|
      t.datetime :performed_at
      t.integer :workout_id

      t.timestamps
    end
  end
end
