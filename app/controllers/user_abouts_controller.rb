# frozen_string_literal: true

# user_about controller
class UserAboutsController < ApplicationController
  before_action :set_user_about, only: %i[show edit update destroy]

  # GET /user_abouts or /user_abouts.json
  def index
    @user_abouts = UserAbout.all
  end

  # GET /user_abouts/1 or /user_abouts/1.json
  def show; end

  # GET /user_abouts/new
  def new
    @user_about = UserAbout.new
  end

  # GET /user_abouts/1/edit
  def edit; end

  # POST /user_abouts or /user_abouts.json
  def create
    @user_about = UserAbout.new(user_about_params)

    respond_to do |format|
      if @user_about.save
        format.html { redirect_to user_about_url(@user_about), notice: 'User about was successfully created.' }
        format.json { render :show, status: :created, location: @user_about }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_abouts/1 or /user_abouts/1.json
  def update
    respond_to do |format|
      if @user_about.update(user_about_params)
        format.html { redirect_to root_path, notice: 'User about was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_abouts/1 or /user_abouts/1.json
  def destroy
    @user_about.destroy

    respond_to do |format|
      format.html { redirect_to user_abouts_url, notice: 'User about was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_about
    @user_about = UserAbout.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_about_params
    params.require(:user_about).permit(:fav_club, :image)
  end
end
