class CreateTasksInPacks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks_in_packs do |t|
      t.integer :pack_of_task_id
      t.integer :task_id
      t.timestamps
    end
    add_foreign_key :tasks_in_packs, :pack_of_tasks
    add_foreign_key :tasks_in_packs, :tasks
  end
end
