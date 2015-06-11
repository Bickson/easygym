class AddSetsToCycles < ActiveRecord::Migration
  def change
    add_column :cycles, :sets, :integer
  end
end
