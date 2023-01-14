# frozen_string_literal: true

# match controller
class MatchesController < ApplicationController
  before_action :set_match, only: %i[show edit update destroy]

  # GET /matches or /matches.json
  def index
    @db = Match.all
    @teams = Team.all
    @teams_name = {}
    @teams.each do |team|
      @teams_name[team[:team_name]] = team[:id]
    end
  end

  # GET /matches/1 or /matches/1.json
  # def show
  #   @match = Match.find(params[:id])
  #   @match_stat = @match[:statistic].split(', ')
  #   @sop1 = Team.find(@match[:sop1_id])
  #   @sop2 = Team.find(@match[:sop2_id])
  #   @vlad = @match_stat[0].split
  #   @udar_v_stvor = @match_stat[1].split
  #   @udar_mimo = @match_stat[2].split
  #   @ugol_udar = @match_stat[3].split
  #   @shtraf_udar = @match_stat[4].split
  # end

  def new
    @match = Match.new
  end

  def edit; end

  # POST /matches or /matches.json
  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to match_url(@match), notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1 or /matches/1.json
  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to match_url(@match), notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1 or /matches/1.json
  def destroy
    @match.destroy

    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def filters
  #   @teams = Team.all
  #   @team_id = params[:team]
  #   @team_id = 1 if @team_id
  #   @team_name = Team.find(@team_id)[:team_name] if @team_id
  #   @years = params[:year]
  #   @league = params[:league]
  #   @place = params[:place]
  #   @need_matches = Match.all
  #   right_year if @years
  #   right_league if @league
  #   if @place == 'home'
  #     search_home
  #   else
  #     search_guest
  #   end
  # end

  private

  def right_year
    @year = @years.split('-')
    @year[0] = "#{@year[0]}-01-01"
    @year[1] = "#{@year[1]}-01-01"
  end

  def right_league
    leg = @league.split
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
    @need_matches = @need_matches.where(match_date: @year[0]..@year[1]) if @years
    @need_matches = @need_matches.where(style: @leag) if @league
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_match
    @match = Match.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def match_params
    params.require(:match).permit(:sop, :schet, :shotout, :style, :statistic)
  end
end
