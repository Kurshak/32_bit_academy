class ChangeReferenceInThemesToCategories < ActiveRecord::Migration[6.0]
  def change
    remove_reference :themes, :categories, index: true, foreign_key: true
    add_column :themes, :category_id, :integer
    add_foreign_key :themes, :categories
  end
end
