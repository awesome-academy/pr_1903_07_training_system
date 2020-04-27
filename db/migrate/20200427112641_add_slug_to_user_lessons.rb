class AddSlugToUserLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :user_lessons, :slug, :string
    add_index :user_lessons, :slug, unique: true
  end
end
