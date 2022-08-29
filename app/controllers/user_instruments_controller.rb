class UserInstrumentsController < ApplicationController
  before_action :set_user_instrument, only: [:update, :destroy]

  def create
    @new_instrument = UserInstrument.new(user_instrument_params)
    @new_instrument.user_id = current_user.id
    @new_instrument.save
    redirect_to user_path(current_user)
  end

  def update
    @instrument.update(user_instrument_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @instrument.destroy
    redirect_to user_path(current_user)
  end

  private

  def user_instrument_params
    params.require(:user_instrument).permit(:instrument_id, :experience_level)
  end

  def set_user_instrument
    @instrument = UserInstrument.find(params[:id])
  end
end
