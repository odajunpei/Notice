class Admin::MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
    @familymembers = Member.where(familycode_id: @member.familycode_id)
    @familyusers = User.where(familycode_id: @member.familycode_id)
  end

  def destroy
    @member = member.find(params[:id])
    @member.destroy
    redirect_to admin_members_path
  end
end
