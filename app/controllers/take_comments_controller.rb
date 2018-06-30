class TakeCommentsController < ApplicationController
  def create
    @comment = TakeComment.new
    @comment.take_id = params[:take_id]
    @comment.content = params[:comment]
    @comment.save
    
    redirect_to :back
  end

  def delete
    comment = TakeComment.find(params[:take_comment_id])
    comment.destroy
    
    redirect_to :back
  end
end
