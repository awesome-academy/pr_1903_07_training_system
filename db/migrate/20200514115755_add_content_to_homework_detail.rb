class AddContentToHomeworkDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :homework_details, :content, :text
  end
end
