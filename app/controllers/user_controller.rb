class UserController < ApplicationController
  def profile
    @curr_user = User.find(params[:id])
    @username = @curr_user.email.split('@')[0]
    @avatar = @curr_user.image_url
    @fav_sb = @curr_user.favorsb
    @guest = @curr_user.guest
  end
end
