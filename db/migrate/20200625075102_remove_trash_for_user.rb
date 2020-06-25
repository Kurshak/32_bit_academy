# frozen_string_literal: true

class RemoveTrashForUser < ActiveRecord::Migration[6.0]
  def change
    change_column :students, :uid, :string, null: true, default: 'email'
    change_column :users, :uid, :string, null: true, default: 'email'
    remove_index %i[uid provider], name: 'index_users_on_uid_and_provider'
    remove_index %i[uid provider], name: 'index_students_on_uid_and_provider'
    remove_index %i[confirmation_token], name: 'index_students_on_confirmation_token'
    remove_index %i[confirmation_token], name: 'index_users_on_confirmation_token'
    remove_index %i[reset_password_token], name: 'index_students_on_reset_password_token'
    remove_index %i[reset_password_token], name: 'index_users_on_reset_password_token'
    add_column :students, :discord, :string
    rename_column :students, :adress, :address
  end
end
