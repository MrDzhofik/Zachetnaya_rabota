class UserController < ApplicationController
  def profile
    @curr_user = User.find(params[:id])
    @username = @curr_user.email.split('@')[0]
    @curr_info = UserAbout.find_by(user_id: current_user.id)
    @avatar = @curr_info.image
    @fav_club = @curr_info.fav_club
    @fav_club_name = Team.find(@fav_club)[:team_name]
    @guest = @curr_info.comments
  end
end
