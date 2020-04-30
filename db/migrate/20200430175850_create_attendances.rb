class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :lesson_id
      t.integer :student_id
      t.boolean :is_free
      t.boolean :is_paid
      t.boolean :is_visited
      t.string :comment

      t.timestamps
    end
    add_foreign_key :attendances, :lessons
    add_foreign_key :attendances, :students
  end
end
