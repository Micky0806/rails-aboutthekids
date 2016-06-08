class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

end
