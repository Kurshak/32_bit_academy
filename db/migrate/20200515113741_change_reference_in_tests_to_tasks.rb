class ChangeReferenceInTestsToTasks < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tests, :tasks, index: true, foreign_key: true
    add_column :tests, :task_id, :integer
    add_foreign_key :tests, :tasks
  end
end
