class SettingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show
  end

  def account
  end

  def profile
  end



  def update
    case params[:by]
    when 'profile'
      update_profile
    else
      update_basic
    end
  end


  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(*User::ACCESSABLE_ATTRS)
  end

  def update_basic
    if @user.update(user_params)
      redirect_to setting_path, notice: '更新成功'
    else
      render 'show'
    end
  end

  def update_profile
    if @user.update(user_params)
      @user.update_profile_fields(params[:user][:profiles])
      redirect_to profile_setting_path, notice: '更新成功'
    else
      render 'profile'
    end
  end

end
