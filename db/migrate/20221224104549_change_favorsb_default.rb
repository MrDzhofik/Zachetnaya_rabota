class ChangeFavorsbDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :favorsb, from: nil, to: 'not set'
  end
end
