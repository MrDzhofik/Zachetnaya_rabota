class ChangeFavsbDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :favorsb, from: 'not set', to: 'Не выбрана'
  end
end
