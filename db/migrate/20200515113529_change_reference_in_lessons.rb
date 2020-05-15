class ChangeReferenceInLessons < ActiveRecord::Migration[6.0]
  def change
    remove_reference :lessons, :themes, index: true, foreign_key: true
    add_column :lessons, :theme_id, :integer
    add_foreign_key :lessons, :themes
  end
end
