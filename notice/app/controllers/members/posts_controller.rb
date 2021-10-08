class Members::PostsController < ApplicationController
  def index
    @post = Post.all
    @post_find = Post.find(params[:id])
  end

  def show
    @post_find = Post.find(params[:id])
    @member = @post_find.user
    @members = Member.all
    @comment = Comment.new
  end

  # private

  # def params
  #   params.require(:post).permit(:post, :id)
  # end

end
