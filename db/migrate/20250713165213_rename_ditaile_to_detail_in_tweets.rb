class RenameDitaileToDetailInTweets < ActiveRecord::Migration[7.1]
  def change
     rename_column :tweets, :ditaile, :detail
  end
end
