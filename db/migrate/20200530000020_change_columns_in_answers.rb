class ChangeColumnsInAnswers < ActiveRecord::Migration[6.0]
  def change
    change_column :answers, :automatic_evaluation, :string
    change_column :answers, :teacher_evaluation, :string
  end
end
