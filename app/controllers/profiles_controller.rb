class ProfilesController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(params.require(:user).permit(:first_name, :last_name, :phone_number, :company_name))
    redirect_to profile_path(@user)
    # flash.now[:alert] = "hallo probeer opnieuw" ==> zie shared/flashes
  end

end
