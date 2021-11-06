class CommentsController < ApplicationController
before_action :authenticate_member!
  def create
     @post = Post.find(params[:post_id])
     @comment = @post.comments.build(comment_params)
     @comment.member_id = current_member.id
     @comment.score = Language.get_data(comment_params[:comment]) 
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
    params.require(:comment).permit(:comment,:post_id,:member_id, :score)
  end
end
