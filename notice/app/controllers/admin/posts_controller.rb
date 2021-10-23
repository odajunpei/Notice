class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!
  helper_method :sort_column, :sort_direction
  def index
    @posts = Post.all.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.order(created_at: :desc).page(params[:page]).per(10)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_posts_path
  end

  private

    def sort_direction
      %w[asc desc].include?(params[:direction])? params[:direction] : "asc"
    end

    def sort_column
      Post.column_names.include?(params[:sort])? params[:sort] : "post"
    end
end
