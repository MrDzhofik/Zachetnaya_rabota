class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :coach
      t.string :capitan
      t.date :year_of_creation

      t.timestamps
    end
  end
end
