class PostsController < ApplicationController
#user側
  def new
    @post = Post.new
    @posts = current_user.posts.all.page(params[:page]).per(1)   #直近3件の投稿に対するコメントを表示する。
    # @comments = @post.comments.
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to new_post_path
    end
  end

#member側
  def index
    user_list = User.where(familycode_id: current_member.familycode_id)
    @posts = Post.where(user_id: user_list).order(created_at: :desc).page(params[:page]).per(3)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.order(created_at: :desc)
  end

    private

    def post_params
      params.require(:post).permit(:post, :user_id)
    end

end
