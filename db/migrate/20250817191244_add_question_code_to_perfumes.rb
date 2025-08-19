class AddQuestionCodeToPerfumes < ActiveRecord::Migration[7.1]
  def change
    add_column :perfumes, :question_code, :string
  end
end
