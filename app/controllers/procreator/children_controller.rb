class Procreator::ChildrenController < ApplicationController

  def index
    @children = Child.all
  end

  def new
    @child = Child.new
    procreator = User.find(current_user.id)
  end

  def create
    @child = Child.new(params.require(:child).permit(:name, :age))
     @child.save!
     redirect_to procreator_children_path
  end


end

