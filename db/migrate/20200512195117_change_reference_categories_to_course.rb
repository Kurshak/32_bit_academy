class ChangeReferenceCategoriesToCourse < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :categories, :themes
    remove_column :categories, :theme_id
    add_reference :categories, :course, foreign_key: true
  end
end
