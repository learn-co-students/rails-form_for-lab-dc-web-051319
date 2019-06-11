class SchoolsController < ApplicationController

  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def create
    self.new
    @school.title = params[:school][:title]
    @school.room_number = params[:school][:room_number]
    @school.save
    redirect_to school_path(@school.id)
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    @school.update(params.require(:school).permit(:title, :room_number))
    redirect_to school_path(@school.id)
  end


end
