class CreateUserInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :user_infos do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :comments_count
      t.string :fav_club
      t.string :fav_sb

      t.timestamps
    end
  end
end
