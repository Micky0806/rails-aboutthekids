class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
     if params[:location].present?
       @activities = Activity.near(params[:location], params[:distance] || 10)
     else
      @activities = Activity.all
    end
    @markers = Gmaps4rails.build_markers(@activities) do |activity, marker|
     marker.lat activity.latitude
     marker.lng activity.longitude
  end
end

def show
  @activity = Activity.find(params[:id])
  @activity_coordinates = { lat: @activity.latitude, lng: @activity.longitude }
end
end
