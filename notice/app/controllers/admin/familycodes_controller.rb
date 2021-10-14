class Admin::FamilycodesController < ApplicationController
  def index
   @familycodes = Familycode.all
  end
end
