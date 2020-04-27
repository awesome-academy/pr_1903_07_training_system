class AddSlugToCourseUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :course_users, :slug, :string
    add_index :course_users, :slug, unique: true
  end
end
