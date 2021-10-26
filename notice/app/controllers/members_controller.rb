class MembersController < ApplicationController
  before_action :authenticate_member!

  def show
    @member = Member.find(current_member.id)
    @familymembers = Member.where(familycode_id: current_member.familycode_id)
    @familyusers = User.where(familycode_id: current_member.familycode_id)
  end

  def edit
    @member = Member.find(current_member.id)
  end

  def update
    @member = Member.find(current_member.id)
    if @member.update(member_params)
      redirect_to member_path(current_member.id)
    else
      render :edit
    end
  end

  def leave
    @member = Member.find(current_member.id)
  end

  def withdraw
    @member = Member.find(current_member.id)
    @member.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def member_params
    params.require(:member).permit(:name, :name_kana, :telephone_number, :birth_date, :address, :email, :is_deleted, :profile_image, :familycode_id, :gender)
  end



end
