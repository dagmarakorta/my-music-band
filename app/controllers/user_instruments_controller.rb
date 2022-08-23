class UserInstrumentsController < ApplicationController
  def create
    @new_instrument = UserInstrument.new(user_instrument_params)
    @new_instrument.user_id = current_user.id
    @new_instrument.save
    redirect_to user_path(current_user)
  end

  private
  def user_instrument_params
    params.require(:user_instrument).permit(:instrument_id)
  end
end
