class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :sop
      t.string :schet
      t.boolean :shotout
      t.string :style
      t.string :statistic

      t.timestamps
    end
  end
end
