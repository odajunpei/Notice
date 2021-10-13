class UsersController < ApplicationController
    before_action :authenticate_user!
  def show
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def leave
    @user = user.find(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :name_kana, :telephone_number, :birth_year, :birth_month, :birth_day, :email, :is_active, :profile_image, :familycode_id)
  end
end
