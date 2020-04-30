class CreateSubthemes < ActiveRecord::Migration[6.0]
  def change
    create_table :subthemes do |t|
      t.integer :theme_id
      t.integer :order_in_theme
      t.string :name
      t.text :description


      t.timestamps
    end
    add_foreign_key :subthemes, :themes
  end
end
