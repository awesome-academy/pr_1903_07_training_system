class AddSlugToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :slug, :string
    add_index :exercises, :slug, unique: true
  end
end
