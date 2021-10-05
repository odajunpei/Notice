class MembersController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_member
=======
  before_action :authenticate_member!
>>>>>>> aa81e37194dbcb6e07162263a24db2e8d7be1ce2
  def show
    @member = Member.find(current_member.id)
  end

  def edit
    @member = Member.find(current_member.id)
  end

  def update
    @member = Member.find(current_member.id)
    if @member.update(member_params)
<<<<<<< HEAD
      redirect_to members_path(current_member.id)
=======
      redirect_to member_path(current_member.id)
>>>>>>> aa81e37194dbcb6e07162263a24db2e8d7be1ce2
    else
      render :edit
    end
  end

  def leave
    @member = Member.find(current_member.id)
  end

  private

  def member_params
    params.require(:member).permit(:name, :name_kana, :telephone_number, :birth_year, :birth_month, :birth_day, :email, :is_active, :image_id)
  end


<<<<<<< HEAD

=======
>>>>>>> aa81e37194dbcb6e07162263a24db2e8d7be1ce2
end
