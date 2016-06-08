class Procreator::ChildrenController < ApplicationController

  def index
    @children = Child.all
  end

  def new
    @child = Child.new
  end

  def create
    @child = Child.new(params.require(:child).permit(:name, :age))
     @child.save!
     redirect_to child_path(@child)
  end


end

