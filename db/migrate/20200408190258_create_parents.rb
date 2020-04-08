class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|

      t.string :name
      t.string :surname
      t.string :fathername
      t.string :phone_number
      t.string :gender

      t.timestamps
    end
  end
end
