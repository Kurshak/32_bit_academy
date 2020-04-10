class CreatePackOfTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :pack_of_tasks do |t|
      t.integer :user_id
      t.datetime :date_of_creation
      t.string :name
      t.text :description

      t.timestamps
    end
    add_foreign_key :pack_of_tasks, :users
  end
end
