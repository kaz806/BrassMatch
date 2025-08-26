class AddResultToPerfumes < ActiveRecord::Migration[7.1]
  def change
    add_column :perfumes, :result, :string
  end
end
