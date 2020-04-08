class DeviseTokenAuthCreateStudents < ActiveRecord::Migration[6.0]
  def change
    
    create_table(:students) do |t|
      ## Required
      t.string :provider, :null => false, :default => "login"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.boolean  :allow_password_change, :default => false

      ## Rememberable
      t.datetime :remember_created_at

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## User Info
      t.string :login
      t.string :name
      t.string :fathername
      t.string :surname
      t.string :gender
      t.string :school
      t.string :grade
      t.string :grade_in_school
      t.string :phone_number
      t.string :vk
      t.string :adress
      t.string :region
      t.datetime :started_academy
      t.datetime :birthday
      t.string :email

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :students, :email,                unique: true
    add_index :students, [:uid, :provider],     unique: true
    add_index :students, :reset_password_token, unique: true
    add_index :students, :confirmation_token,   unique: true
    # add_index :students, :unlock_token,       unique: true
  end
end
