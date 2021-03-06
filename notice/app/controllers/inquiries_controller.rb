class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      InquiryMailer.received_email(@inquiry).deliver
      redirect_to "/inquiries/#{@inquiry.name}/#{@inquiry.id}"
    else
      render :new
    end
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  # def edit
  #   @inquiry = Inquiry.find(params[:id])
  # end

  # def update
  #   @inquiry = Inquiry.find(params[:id])
  #   if @inquiry.update(inquiry_params)
  #     InquiryMailer.received_email(@inquiry).deliver
  #     redirect_to "/inquiries/#{@inquiry.name}/#{@inquiry.id}"
  #   else
  #     render :edit
  #   end
  # end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :title, :inquiry, :reply, :replyok, :id)
  end

end
