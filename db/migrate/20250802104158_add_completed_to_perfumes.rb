class AddCompletedToPerfumes < ActiveRecord::Migration[7.1]
  def change
    add_column :perfumes, :completed, :boolean, default: false

  end
end
