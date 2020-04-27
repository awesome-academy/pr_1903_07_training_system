class AddSlugToHomeworkResults < ActiveRecord::Migration[5.2]
  def change
    add_column :homework_results, :slug, :string
    add_index :homework_results, :slug, unique: true
  end
end
