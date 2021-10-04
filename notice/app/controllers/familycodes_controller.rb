class FamilycodesController < ApplicationController
  def new
    @family_code = Familycode.new
    @user = User.find(params[:id])
  end

  def create
    @family_code = Familycode.new
    if @family_code.save
      redirect to familycodes_path
    else
      render :new
    end
  end

  def index
  end
  
  private
  
end
