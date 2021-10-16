class Admin::FamilycodesController < ApplicationController
  def index
   @familycodes = Familycode.all
  end

  def show
    @familycode = Familycode.find(params[:id])
  end

  def destroy
    @familycode = Familycode.find(params[:id])
    @familycode.destroy
    redirect_to admin_familycodes_path
  end
end
