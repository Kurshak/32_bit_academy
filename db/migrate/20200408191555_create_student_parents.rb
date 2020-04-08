class CreateStudentParents < ActiveRecord::Migration[6.0]
  def change
    create_table :student_parents do |t|
      t.integer :student_id
      t.integer :parent_id
      t.timestamps
    end
    add_foreign_key :student_parents, :students
    add_foreign_key :student_parents, :parents
  end
end
