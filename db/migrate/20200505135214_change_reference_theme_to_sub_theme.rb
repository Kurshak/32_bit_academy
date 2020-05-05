class ChangeReferenceThemeToSubTheme < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :lessons, :themes
    remove_column :lessons, :theme_id
    add_reference :lessons, :subtheme, foreign_key: true
    remove_foreign_key :tasks, :themes
    remove_column :tasks, :theme_id
    add_reference :tasks, :subtheme, foreign_key: true
  end
end
