class CreateUserAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_abouts do |t|
      t.integer :user_id
      t.string :fav_club
      t.integer :comments

      t.timestamps
    end
  end
end
