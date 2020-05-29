class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :course_users, :sourse_id, :course_id
  end
end
