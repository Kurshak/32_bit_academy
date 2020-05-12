class ChangeReferenceLessonsToTheme < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :lessons, :categories
    remove_column :lessons, :subtheme_id
    add_reference :lessons, :themes, foreign_key: true
  end
end
