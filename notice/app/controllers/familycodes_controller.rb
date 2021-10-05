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
<<<<<<< HEAD

  private

=======
  
  private
  
>>>>>>> aa81e37194dbcb6e07162263a24db2e8d7be1ce2
end
