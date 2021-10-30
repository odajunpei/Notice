class Admin::InquiriesController < ApplicationController
 before_action :authenticate_admin!
 before_action :set_q, only: [:index, :search]
 helper_method :sort_column, :sort_direction
  def index
    @inquiries = Inquiry.all.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
  end

  def edit
    @inquiry = Inquiry.find(params[:id])
  end

  def update
    @inquiry = Inquiry.find(params[:id])
    if @inquiry.update(inquiry_params)
      ReplyMailer.reply_inquiry(@inquiry).deliver
      redirect_to edit_admin_inquiry_path(@inquiry)
    else
      render :edit
    end
  end

  def search

    @results = @q.result.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
  end



  private

    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :title, :inquiry, :reply, :replyok, :id)
    end

    def sort_direction
      %w[asc desc].include?(params[:direction])? params[:direction] : "asc"
    end

    def sort_column
      Inquiry.column_names.include?(params[:sort])? params[:sort] : "name"
    end

    def set_q
      @q = Inquiry.ransack(params[:q])
    end



end
