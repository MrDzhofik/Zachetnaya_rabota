class MatchController < ApplicationController
  def show_all
    @db = Match.all
  end

  def show_stat
    @match = Match.where(id: params[:id])
    p @match
    @match_stat = @match.split(", ")
  end

end
