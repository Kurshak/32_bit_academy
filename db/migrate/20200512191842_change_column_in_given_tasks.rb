class ChangeColumnInGivenTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :given_tasks, :type
    remove_column :given_tasks, :is_auto_check
    add_column :given_tasks, :completed, :boolean
  end
end
