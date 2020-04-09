class CreateHomeworkResults < ActiveRecord::Migration[5.2]
  def change
    create_table :homework_results do |t|
      t.text :content
      t.references :exercise_answer, foreign_key: true
      t.references :homeworl_detail, foreign_key: true

      t.timestamps
    end
  end
end
