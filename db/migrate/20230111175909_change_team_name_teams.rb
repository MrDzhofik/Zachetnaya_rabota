class ChangeTeamNameTeams < ActiveRecord::Migration[7.0]
  def change
    change_column_null :teams, :team_name, false
  end
end
