# frozen_string_literal: true

class CommentController < ApplicationController
  #   def create
  #     match = Match.find(params[:id])
  #     @comment = match.comments.new(comment_params)
  #     @comment.user_id = current_user.id
  #     user_info = User_info.find_by(user_id: :current_user_id)
  #     user_info.comment_count += 1
  #     @comment.match_id = params[:id]
  #     # if @comment.save
  #     #     redirect_to @match
  #     #   else
  #     #     flash.now[:danger] = "error"
  #     #   end

  #     respond_to do |format|
  #       format.html { redirect_to @post, notice: 'Комментарий добавлен' } if @comment.save
  #     end
  #   end

  #   private

  #   def comment_params
  #     params.require(:comment).permit(:user, :title, :body)
  #   end
end
