class RemoveExerciseIdFromHomeworkDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :homework_details, :exercise_id
  end
end
