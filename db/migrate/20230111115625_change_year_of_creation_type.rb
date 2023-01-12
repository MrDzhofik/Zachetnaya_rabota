class ChangeYearOfCreationType < ActiveRecord::Migration[7.0]
  def change
    change_table :teams do |t|
      t.change :year_of_creation, :integer
    end
  end
end
