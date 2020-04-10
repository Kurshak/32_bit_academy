class CreateThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :themes do |t|
      t.integer :course_id
      t.string :category
      t.integer :order_in_category
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
    add_foreign_key :themes, :courses
  end
end
