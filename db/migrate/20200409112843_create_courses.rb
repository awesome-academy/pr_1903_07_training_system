class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.references :lesson, foreign_key: true
      t.references :user, foreign_key: true
      t.string :course_name
      t.datetime :start_time
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
