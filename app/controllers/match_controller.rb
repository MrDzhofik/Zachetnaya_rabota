class MatchController < ApplicationController
  def show_all
    @db = Match.all
    @teams = Team.all
    @teams_name = {}
    @teams.each do |team|
      @teams_name[team[:team_name]] = team[:id]
    end
  end

  def show_stat
    @match = Match.find(params[:id])
    @match_stat = @match[:statistic].split(", ")
    @sop1 = Team.find(@match[:sop1_id])
    @sop2 = Team.find(@match[:sop2_id])
    @vlad = @match_stat[0].split
    @udar_v_stvor = @match_stat[1].split
    @udar_mimo = @match_stat[2].split
    @ugol_udar = @match_stat[3].split
    @shtraf_udar = @match_stat[4].split
  end

  def filters
    @teams = Team.all
    @team_id = params[:team]
    @team_name = Team.find(@team_id)[:team_name]  if @team_id
    @years = params[:year]
    @league = params[:league]
    @place = params[:place]
    @need_matches = Match
    right_year if @years
    right_league if @league
    if @place == 'home'
      search_home
    else
      search_guest
    end
  end

  private

  def right_year
    @year = @years.split('-') 
    @year[0] = "#{@year[0]}-01-01"
    @year[1] = "#{@year[1]}-01-01"
  end

  def right_league
    leg = @league.split()
    @leag = ''
    leg.each do |word|
      @leag += word[0]
    end
  end

  def search_home
    @need_matches = @need_matches.where(sop1_id: @team_id) if @team_id
    search
  end

  def search_guest
    @need_matches = @need_matches.where(sop2_id: @team_id) if @team_id
    search
  end

  def search
    @need_matches = @need_matches.where(match_date: @year[0]..@year[2]) if @years
    @need_matches = @need_matches.where(style: @leag) if @league
  end

end
