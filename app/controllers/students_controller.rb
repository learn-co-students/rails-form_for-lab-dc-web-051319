class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student.find(params[:id])
  end

  def edit
    @student.find(params[:id])
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end
  
end
