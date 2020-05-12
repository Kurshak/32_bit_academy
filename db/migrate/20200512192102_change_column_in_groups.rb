class ChangeColumnInGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :active, :boolean
  end
end
