class GiveCommentsController < ApplicationController
  def create
    @comment = GiveComment.new
    @comment.give_id = params[:give_id]
    @comment.content = params[:comment]
    @comment.save
    
    redirect_to :back
  end

  def delete
    comment = GiveComment.find(params[:give_comment_id])
    comment.destroy
    redirect_to :back
  end
end
