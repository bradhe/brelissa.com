class RsvpController < ApplicationController
  def index
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(params[:rsvp])

    if @rsvp.valid?
      @rsvp.save!
      Notifications.rsvp(@rsvp).deliver

      flash[:notice] = "Thank you for submitting your RSVP for our wedding!"
      redirect_to root_url
    else
      render :action => 'index'
    end
  end
end
