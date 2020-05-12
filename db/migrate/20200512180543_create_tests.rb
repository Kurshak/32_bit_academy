class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.references :tasks, foreign_key: true
      t.timestamps
    end
  end
end
