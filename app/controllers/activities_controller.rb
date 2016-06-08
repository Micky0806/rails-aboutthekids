class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @activities = Activity.all
  end

  def show
  end

end
