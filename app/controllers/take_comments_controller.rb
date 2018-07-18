class TakeCommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :delete]
  def create
    @comment = TakeComment.new
    @comment.take_id = params[:take_id]
    @comment.content = params[:comment]
    @comment.user_id = current_user.id
    @comment.save

    redirect_to :back
  end

  def delete
    comment = TakeComment.find(params[:take_comment_id])
    comment.destroy

    redirect_to :back
  end
end
