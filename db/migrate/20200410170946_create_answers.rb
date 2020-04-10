class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :given_task_id
      t.datetime :date_of_answer
      t.string :file
      t.integer :state_of_cheking
      t.string :result
      t.text :result_description
      t.integer :teacher_mark

      t.timestamps
    end
    add_foreign_key :answers, :given_tasks
  end
end
