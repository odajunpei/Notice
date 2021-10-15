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

  def searchmember
    @member = Member.new
    @familycode = Familycode.find_by(family_code: "#{params[:cd]}")
    @familycode_id = @familycode.id
    render 'members/registrations/new'
  end

  def searchuser
    @user = User.new
    @familycode = Familycode.find_by(family_code: "#{params[:cd]}")
    @familycode_id = @familycode.id
    render 'users/registrations/new'
  end



  private

  def familycode_params
    params.permit(:family_code,:id)
  end
end
