class FamilycodesController < ApplicationController
  def new
    @family_code = Familycode.new
  end

  def create
      @family_code = Familycode.new(familycode_params)
    if @family_code.save
      redirect_to familycodes_result_path(family_code: @family_code.family_code) #キー:family_code 値:@family_code.family_code
    else
      render :new
    end
  end

  def result
    @familycode = params[:family_code] #キーで取得
  end

  def searchmember
    @member = Member.new
    @familycode = Familycode.find_by(family_code: "#{params[:cd]}")
    if @familycode.present?
      @familycode_id = @familycode.id
      render 'members/registrations/new'
    else
      flash[:danger] = "・検索した家族コードは存在しません。"
      render 'members/registrations/new'
    end
  end

  def searchuser
    @user = User.new
    @familycode = Familycode.find_by(family_code: "#{params[:cd]}")
    if @familycode.present?
      @familycode_id = @familycode.id
      render 'users/registrations/new'
    else
      flash[:danger] = "・検索した家族コードは存在しません。"
      render 'users/registrations/new'
    end
  end



  private

  def familycode_params
    params.permit(:family_code,:id)
  end
end
