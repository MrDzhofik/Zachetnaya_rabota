class AddFavsbToUserAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :user_abouts, :fav_sb, :string
  end
end
