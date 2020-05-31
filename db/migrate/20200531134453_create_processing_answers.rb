class CreateProcessingAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :processing_answers do |t|
      t.string :pathToAnswer
      t.timestamps
    end
  end
end
