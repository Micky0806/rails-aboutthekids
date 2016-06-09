class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  def create
    @custom_params = sign_up_params
    if @custom_params[:owner] == 'Parent'
      @custom_params[:owner] = false
    else
      @custom_params[:owner] = true
    end
    build_resource(@custom_params)

    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end

  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:owner, :phone_number,
                                                  :first_name, :last_name)
  end
end
