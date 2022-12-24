class MatchController < ApplicationController
  def show_all
    @db = Match.all
  end

  def show_stat
    @match = Match.find(params[:id])
    @match_stat = @match[:statistic].split(", ")
    @sop = @match[:sop].split('-')
    @vlad = @match_stat[0].split
    @udar_v_stvor = @match_stat[1].split
    @udar_mimo = @match_stat[2].split
    @ugol_udar = @match_stat[3].split
    @shtraf_udar = @match_stat[4].split
  end

end
