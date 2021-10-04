class MembersController < ApplicationController
  before_action :authenticate_member
  def show
    @member = Member.find(current_member.id)
  end

  def edit
    @member = Member.find(current_member.id)
  end

  def update
    @member = Member.find(current_member.id)
    if @member.update(member_params)
      redirect_to members_path(current_member.id)
    else
      render :edit
    end
  end

  def leave
    @member = Member.find(current_member.id)
  end

  private

  def member_params
    params.require(:member).permit(:name, :name_kana, :telephone_number, :birth_year, :birth_month, :birth_day, :email, :is_active, :image_id)
  end
  
  
end
