class FamilycodesController < ApplicationController
  def new
    @family_code = Familycode.new
  end

  def create
      @family_code = Familycode.new(familycode_params)
    if @family_code.save
      redirect_to new_user_registration_path
    else
      render :new
    end
  end

  def search
    @member = Member.new
    @familycode = Familycode.find_by(family_code: "#{params[:cd]}")
    render 'members/registrations/new'
  end

  private

  def familycode_params
    params.permit(:family_code)
  end
end
