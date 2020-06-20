class RemoveColumnInAnswers < ActiveRecord::Migration[6.0]
  def change
    remove_column :answers, :code_file
  end
end
