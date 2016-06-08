class Owner::ActivitiesController < ApplicationController
  before_action :find_activity, only: [ :show, :edit, :update, :destroy ]
  def index

    @activities = current_user.activities

  end

  def show
  end

  def new
    @activity = Activity.new
    @owner = User.find(current_user.id)
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user

    @activity.save!
    redirect_to owner_activity_path(@activity)
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to owner_activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to owner_activities_path(@cocktails)
  end


  private

  def find_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
     params.require(:activity).permit(:name, :photo, :photo_cache, :description, :category, :address, :city, :period_beginning, :period_ending, :price )
   end

end
