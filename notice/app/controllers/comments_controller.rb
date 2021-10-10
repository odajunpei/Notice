class CommentsController < ApplicationController

  def create
     @post = Post.find(params[:post_id])
     @comment = @post.comments.build(comment_params)
     @comment.member_id = current_member.id
     @comment.save(comment_params)
     @comments = @post.comments
     render :index
  end

  def destroy
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
      @comment.destroy
      @comments = @post.comments
      render :index
  end

  private

  def comment_params
    params.require(:comment).permit(:comment,:post_id,:member_id)
  end
end
