class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
      case resource
      when Member
        member_path(current_member)
      when User
        user_path(current_user)
      when Admin
        admin_inquiries_path
      end
    end

    def after_sign_up_path_for(resource)
      case resource
      when Member
        member_path(current_member)
      when User
        user_path(current_user)
      end
    end

    def after_sign_out_path_for(resource)
      root_path
    end

    protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :nickname, :birth_date, :address, :fire, :telephone_number, :profile_image, :familycode_id, :gender])
  end
end