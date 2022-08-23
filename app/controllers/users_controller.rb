class UsersController < ApplicationController
  def show
    set_user
    @new_instrument = UserInstrument.new
    @user_instruments = UserInstrument.where(user_id: @user.id)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
