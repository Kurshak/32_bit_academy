class AddNewColumnsInPaybacks < ActiveRecord::Migration[6.0]
  def change
    add_column :paybacks, :num_of_lessons_back, :integer
    add_column :paybacks, :group_id, :integer
    add_foreign_key :paybacks, :groups
  end
end
