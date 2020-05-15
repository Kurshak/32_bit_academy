class ChangeReferenceInGivenTasks < ActiveRecord::Migration[6.0]
  def change
    remove_reference :given_tasks, :groups, index: true, foreign_key: true
    add_column :given_tasks, :group_id, :integer
    add_foreign_key :given_tasks, :groups
  end
end
