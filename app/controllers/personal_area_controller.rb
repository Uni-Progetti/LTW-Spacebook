class PersonalAreaController < ApplicationController
    before_action :authenticate_user!

  def index
    @quick_reservation = QuickReservation.where(user_id: current_user.id).first
  end

end
