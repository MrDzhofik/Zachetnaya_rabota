# frozen_string_literal: true

# team controller
class TeamController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @team_name = @team[:team_name]
    @coach = @team[:coach]
    @capitan = @team[:capitan]
    @year = @team[:year_of_creation]
  end
end
