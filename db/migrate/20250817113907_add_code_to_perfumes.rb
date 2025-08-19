class AddCodeToPerfumes < ActiveRecord::Migration[7.1]
  def change
    add_column :perfumes, :code, :string
  end
end
