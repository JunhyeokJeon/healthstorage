class PostCommentsController < ApplicationController
  def create
    @comment = PostComment.new
    @comment.post_id = params[:post_id]
    @comment.content = params[:comment]
    @comment.user_id = current_user.id
    @comment.save
    
    redirect_to :back
  end

  def delete
    comment = PostComment.find(params[:post_comment_id])
    comment.destroy
    
    redirect_to :back
  end
end
