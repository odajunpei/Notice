class QuestionsController < ApplicationController

  before_action :authenticate_user!, only: [:update]
  before_action :authenticate_member!, only:[:new, :create, :destroy, :index, :show]

  def new
    @question = Question.new
    @users =  User.where(familycode_id: current_member.familycode_id)
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      ActionCable.server.broadcast 'question_channel', content: {nickname: @question.member.nickname, body: @question.body, created_at: @question.created_at.strftime('%Y/%m/%d %H:%M:%S')}
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @user = User.find_by(id: @question.user_id)
  end

  def index
    @questions = Question.where(member_id: current_member.id).order(created_at: :desc).page(params[:page]).per(10)
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to new_post_path
    else
      render :new_post_path
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end


  private

  def question_params
    params.require(:question).permit(:member_id, :user_id, :body, :choices1, :choices2, :choices3, :user_answer)
  end
end
