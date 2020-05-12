class RenameSubThemeToCategories < ActiveRecord::Migration[6.0]
  def change
    rename_table :subthemes, :categories
  end
end
