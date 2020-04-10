class CreateStudentsInGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :students_in_groups do |t|
      t.integer :group_id
      t.integer :student_id
      t.datetime :started_group
      t.datetime :left_group

      t.timestamps
    end
    add_foreign_key :students_in_groups, :groups
    add_foreign_key :students_in_groups, :students
  end
end
