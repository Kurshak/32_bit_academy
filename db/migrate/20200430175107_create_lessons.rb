class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.integer :group_id
      t.datetime :datetime
      t.integer :theme_id
      t.string :comment

      t.timestamps
    end
    add_foreign_key :lessons, :groups
    add_foreign_key :lessons, :themes
  end
end
