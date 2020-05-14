class AddUserIdToHomeworkDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :homework_details, :user_id, :integer
  end
end
