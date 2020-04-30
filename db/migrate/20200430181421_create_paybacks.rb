class CreatePaybacks < ActiveRecord::Migration[6.0]
  def change
    create_table :paybacks do |t|
      t.integer :student_id
      t.float :amount
      t.datetime :date
      t.string :cause
      t.boolean :is_cash
      t.string :comment


      t.timestamps
    end
    add_foreign_key :paybacks, :students
  end
end
