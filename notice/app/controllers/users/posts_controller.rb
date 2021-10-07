class Users::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to new_users_post_path
    end
  end

  private

    def post_params
      params.require(:post).permit(:post, :user_id)
    end
end
