class CreateGivenTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :given_tasks do |t|
      t.integer :task_id
      t.integer :student_id
      t.integer :user_id
      t.datetime :date_of_giving
      t.boolean :is_auto_check
      t.string :type

      t.timestamps
    end
    add_foreign_key :given_tasks, :tasks
    add_foreign_key :given_tasks, :students
    add_foreign_key :given_tasks, :users
  end
end
