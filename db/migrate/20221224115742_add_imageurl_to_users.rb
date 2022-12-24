class AddImageurlToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :image_url, :string
    change_column_default :users, :image_url, from: nil, to: "https://img.freepik.com/premium-vector/boy-profile-photo-icon-women-portraits-user-photo_750364-583.jpg?w=740"
  end
end
