class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :student_id
      t.integer :group_id
      t.float :amount
      t.datetime :date
      t.boolean :is_checked
      t.boolean :is_set_for_attendances
      t.integer :discount
      t.integer :num_of_lessons
      t.boolean :is_cash
      t.string :comment

      t.timestamps
    end
    add_foreign_key :payments, :students
    add_foreign_key :payments, :groups
  end
end
