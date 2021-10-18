class Admin::MembersController < ApplicationController
 before_action :authenticate_admin!
 helper_method :sort_column, :sort_direction
  def index
    @members = Member.all.order(sort_column+ ' ' + sort_direction)
  end

  def show
    @member = Member.find(params[:id])
    @familymembers = Member.where(familycode_id: @member.familycode_id)
    @familyusers = User.where(familycode_id: @member.familycode_id)
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to admin_members_path
  end

  private

    def sort_direction
      %w[asc desc].include?(params[:direction])? params[:direction] : "asc"
    end

    def sort_column
      Member.column_names.include?(params[:sort])? params[:sort] : "name"
    end
end
