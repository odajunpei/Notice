class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = current_member.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post)
    end
  end

  def destroy
    Comment.find_by(id: params[:id], post_id: params[:post_id]).destroy
    redirect_to book_path(params[:post_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment,:post_id,:member_id)
  end
end
