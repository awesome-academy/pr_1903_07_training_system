class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :question
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
