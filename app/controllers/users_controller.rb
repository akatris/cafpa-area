class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find params[:id]
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = I18n.t('account_created')
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
    def user_params
        params.require(:user)
          .permit(:username, :password, :password_confirmation)
    end
end