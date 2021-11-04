class QuestionsController < ApplicationController

  def new
    @question = Question.new
    @users =  User.where(familycode_id: current_member.familycode_id)
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

  def update
    @question = Question.find_by(user_id: current_user.nickname)
    if @question.update(question_params)
      redirect_to new_post_path
    # else
    #   render :new_post_path
    end
  end


  private

  def question_params
    params.require(:question).permit(:member_id, :user_id, :body, :choices1, :choices2, :choices3, :user_answer)
  end
end
