class Admin::UsersController < ApplicationController
before_action :authenticate_admin!
before_action :set_q, only: [:index, :search]
helper_method :sort_column, :sort_direction

  def index
    @users = User.all.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @familymembers = Member.where(familycode_id: @user.familycode_id)
    @familyusers = User.where(familycode_id: @user.familycode_id)
    @user_score = @user.posts.comments.all.sum(:score)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

  def search
    @results = @q.result.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
  end

  private

    def sort_direction
      %w[asc desc].include?(params[:direction])? params[:direction] : "asc"
    end

    def sort_column
      User.column_names.include?(params[:sort])? params[:sort] : "name"
    end

    def set_q
      @q = User.ransack(params[:q])
    end
end
