class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.datetime :group_started
      t.datetime :group_closed
      t.text :schedule
      t.integer :course_id

      t.timestamps
    end
    add_foreign_key :groups, :courses
  end
end
