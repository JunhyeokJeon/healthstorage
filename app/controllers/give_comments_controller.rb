class GiveCommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :delete]
  def create
    @comment = GiveComment.new
    @comment.give_id = params[:give_id]
    @comment.content = params[:comment]
    @comment.user_id = current_user.id
    @comment.save

    redirect_to :back
  end

  def delete
    comment = GiveComment.find(params[:give_comment_id])
    comment.destroy
    redirect_to :back
  end
end
