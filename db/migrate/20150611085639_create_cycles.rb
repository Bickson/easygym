class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.integer :reps
      t.integer :exercise_id

      t.timestamps
    end
  end
end
