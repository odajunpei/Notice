class Admin::MembersController < ApplicationController
 before_action :authenticate_admin!
 before_action :set_q, only: [:index, :search]
 helper_method :sort_column, :sort_direction
  def index
    @members = Member.all.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
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

  def search
    @results = @q.result.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
  end


  private

    def sort_direction
      %w[asc desc].include?(params[:direction])? params[:direction] : "asc"
    end

    def sort_column
      Member.column_names.include?(params[:sort])? params[:sort] : "name"
    end

    def set_q
      @q = Member.ransack(params[:q])
    end
end
