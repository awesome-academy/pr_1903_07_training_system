class AddSlugToHomeworkDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :homework_details, :slug, :string
    add_index :homework_details, :slug, unique: true
  end
end
