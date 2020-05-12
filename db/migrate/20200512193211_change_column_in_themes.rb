class ChangeColumnInThemes < ActiveRecord::Migration[6.0]
  def change
    remove_column :themes, :type
    remove_column :themes, :category
    remove_column :themes, :order_in_category
    add_column :themes, :order_in_theme, :integer
  end
end
