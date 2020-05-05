class AddGroupToGivenTask < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :given_tasks, :users
    remove_column :given_tasks, :user_id
    add_reference :given_tasks, :groups, foreign_key: true
  end
end
