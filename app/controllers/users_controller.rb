class UsersController < ApplicationController
  def show
    set_user
    @user_instruments = UserInstrument.new
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
