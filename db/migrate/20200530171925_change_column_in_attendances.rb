class ChangeColumnInAttendances < ActiveRecord::Migration[6.0]
  def change
    remove_column :attendances, :is_visited
    add_column :attendances, :is_visited, :integer
  end
end
