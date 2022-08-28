class UsersController < ApplicationController
  def show
    set_user
    @new_instrument = UserInstrument.new
    @instruments = @user.user_instruments
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
