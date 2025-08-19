class ChangeUserIdToNullableInPerfumes < ActiveRecord::Migration[7.1]
  def change
    change_column_null :perfumes, :user_id, true
  end
end
