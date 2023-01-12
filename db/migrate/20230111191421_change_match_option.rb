class ChangeMatchOption < ActiveRecord::Migration[7.0]
  def change
    change_column_null :matches, :sop1_id, false
    change_column_null :matches, :sop2_id, false
  end
end
