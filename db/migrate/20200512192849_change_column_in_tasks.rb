class ChangeColumnInTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :tests
    add_column :tasks, :type, :integer
  end
end
