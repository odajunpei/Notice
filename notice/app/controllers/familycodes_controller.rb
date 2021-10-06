class FamilycodesController < ApplicationController
  def new
    @family_code = Familycode.new
    # @user = User.find(params[:id])
    # @familycodes = Array.new
    # if request.post? then
    #   @familycodes = Familycode.where family_code: params[:find]
    # end
  end

  def create
      @family_code = Familycode.new(familycode_params)
    if @family_code.save
      redirect_to new_user_registration_path
    else
      render :new
    end
  end

  # def find
  #   @familycodes = Array.new
  #   if request.post? then
  #     @familycodes = Familycode.where family_code: params[:find]
  #   end
  # end

  private

  def familycode_params
    params.permit(:family_code)
  end
end
