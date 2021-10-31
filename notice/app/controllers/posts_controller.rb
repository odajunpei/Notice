class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :authenticate_member!, only:[:index, :show]
#user側
  def new
    @post = Post.new
    @posts = current_user.posts.order("created_at DESC").page(params[:page]).per(1)   #直近3件の投稿に対するコメントを表示する。
  end

  def create
    @post = current_user.posts.new(post_params)
    mail_members = Member.where(familycode_id: current_user.familycode_id)
    if @post.save
      if @post.post == "SOS" && mail_members.present?
        mail_members.each do |member|
          SosMailer.send_when_sos(member.email, current_user).deliver
        end
      end
      redirect_to new_post_path
    end
  end

#member側
  def index
    user_list = User.where(familycode_id: current_member.familycode_id)
    @posts = Post.where(user_id: user_list).order("created_at DESC").page(params[:page]).per(3)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.order("created_at DESC")
  end

    private

    def post_params
      params.require(:post).permit(:post, :user_id)
    end

end
