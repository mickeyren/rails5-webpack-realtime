class CheckinsController < ApplicationController
  def index
    @checkin = Checkin.new
  end

  def create
    message = Checkin.new
    ActionCable.server.broadcast 'checkins',
      location: '0, 0',
      name: 'Me'

    flash[:success] = 'Your location has been saved.'
    
    redirect_to action: :index
  end
  
    private
  
      def checkin_params
        params.require(:checkin).permit!
      end
  end