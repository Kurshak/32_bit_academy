class ChangeReferenceInTasksToThemes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tasks, :themes, index: true, foreign_key: true
    add_column :tasks, :theme_id, :integer
    add_foreign_key :tasks, :themes
  end
end
