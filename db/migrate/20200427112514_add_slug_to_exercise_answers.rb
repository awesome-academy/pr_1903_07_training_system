class AddSlugToExerciseAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :exercise_answers, :slug, :string
    add_index :exercise_answers, :slug, unique: true
  end
end
