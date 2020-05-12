class ChangeColumnInAnswers < ActiveRecord::Migration[6.0]
  def change
    remove_column :answers, :file
    remove_column :answers, :result
    remove_column :answers, :result_description
    remove_column :answers, :teacher_mark
    add_column :answers, :code_file, :string
    add_column :answers, :automatic_evaluation, :integer
    add_column :answers, :teacher_evaluation, :integer
    add_column :answers, :teacher_comment, :string
    add_column :answers, :student_comment, :string

  end
end
