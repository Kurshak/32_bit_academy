class AddColumnInTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :order_in_task, :integer
  end
end
