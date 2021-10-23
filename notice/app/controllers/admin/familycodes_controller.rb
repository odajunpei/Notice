class Admin::FamilycodesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_q, only: [:index, :search]
  helper_method :sort_column, :sort_direction

  def index
    @familycodes = Familycode.all.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
  end

  def show
    @familycode = Familycode.find(params[:id])
  end

  def destroy
    @familycode = Familycode.find(params[:id])
    @familycode.destroy
    redirect_to admin_familycodes_path
  end


  def search
    @results = @q.result.order(sort_column+ ' ' + sort_direction).page(params[:page]).per(10)
  end

  private

    def sort_direction
      %w[asc desc].include?(params[:direction])? params[:direction] : "asc"
    end

    def sort_column
      Familycode.column_names.include?(params[:sort])? params[:sort] : "famcode"
    end

    def set_q
      @q = Familycode.ransack(params[:q])
    end
end
