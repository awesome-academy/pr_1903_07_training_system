class CreateHomeworkDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :homework_details do |t|
      t.references :homework, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
