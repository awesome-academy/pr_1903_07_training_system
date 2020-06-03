class AddNumberToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :number, :integer
  end
end
