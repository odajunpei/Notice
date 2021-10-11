class PostsController < ApplicationController

  def new
    @post = Post.new
    @posts = Post.all.page(params[:page]).per(1)   #直近3件の投稿に対するコメントを表示する。
    # @comments = @post.comments.
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to new_post_path
    end
  end

  def index
    @posts = Post.all.order(created_at: :desc).page(params[:page]).per(3)
     @post = Post.all
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
