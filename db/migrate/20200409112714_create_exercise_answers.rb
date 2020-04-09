class CreateExerciseAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_answers do |t|
      t.string :content
      t.references :exercise, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
