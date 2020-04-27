class AddSlugToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :slug, :string
    add_index :lessons, :slug, unique: true
  end
end
