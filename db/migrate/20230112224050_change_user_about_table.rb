class ChangeUserAboutTable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :user_abouts, :user_id, false
  end
end
