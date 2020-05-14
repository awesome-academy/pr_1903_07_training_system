class AddQuestionToHomeworks < ActiveRecord::Migration[5.2]
  def change
    add_column :homeworks, :question, :string
  end
end
