class AddIsCorrectToHomeworkDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :homework_details, :is_correct, :boolean
  end
end
