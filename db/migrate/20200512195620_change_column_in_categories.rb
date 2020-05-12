class ChangeColumnInCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :order_in_theme
    add_column :categories, :order_in_cource, :integer
  end
end
