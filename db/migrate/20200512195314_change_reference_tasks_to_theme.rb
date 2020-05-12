class ChangeReferenceTasksToTheme < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :tasks, :categories
    remove_column :tasks, :subtheme_id
    add_reference :tasks, :themes, foreign_key: true
  end
end
