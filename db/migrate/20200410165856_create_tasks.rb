class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :theme_id
      t.string :name
      t.text :description
      t.string :tests
      t.boolean :is_auto_check

      t.timestamps
    end
    add_foreign_key :tasks, :themes
  end
end
