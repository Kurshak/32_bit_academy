class ChangeColumnInParents < ActiveRecord::Migration[6.0]
  def change
    remove_column :parents, :fathername
    remove_column :parents, :phone_number
    add_column :parents, :fathersname, :string
    add_column :parents, :mobile1, :string
    add_column :parents, :mobile2, :string
    add_column :parents, :parent_type, :integer
  end
end
