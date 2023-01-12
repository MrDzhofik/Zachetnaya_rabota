class AddSop1IdToMatch < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :sop1_id, :integer
    add_column :matches, :sop2_id, :integer
  end
end
