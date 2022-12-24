class AddGuestToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :guest, :integer
  end
end
