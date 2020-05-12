class ChangeReferenceThemesToCategory < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :themes, :courses
    remove_column :themes, :course_id
    add_reference :themes, :categories, foreign_key: true
  end
end
