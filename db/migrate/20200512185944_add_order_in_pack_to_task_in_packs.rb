class AddOrderInPackToTaskInPacks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks_in_packs, :order_in_pack, :integer
  end
end
