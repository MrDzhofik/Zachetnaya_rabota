class AddFavorsbToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :favorsb, :string
  end
end
