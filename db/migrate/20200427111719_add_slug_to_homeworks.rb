class AddSlugToHomeworks < ActiveRecord::Migration[5.2]
  def change
    add_column :homeworks, :slug, :string
    add_index :homeworks, :slug, unique: true
  end
end
