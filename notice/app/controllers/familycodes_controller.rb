class FamilycodesController < ApplicationController
  def new
    @family_code = Familycode.new
  end

  def create
      @family_code = Familycode.new(familycode_params)
    if @family_code.save
      redirect_to familycodes_result_path(famcode: @family_code.famcode) #キー:famcode 値:@family_code.famcode
    else
      render :new
    end
  end

  def result
    @familycode = params[:famcode] #キーで取得
  end

  def searchmember
    @member = Member.new
    @familycode = Familycode.find_by(famcode: "#{params[:cd]}")
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
    @familycode = Familycode.find_by(famcode: "#{params[:cd]}")
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
    params.permit(:famcode,:id)
  end
end
