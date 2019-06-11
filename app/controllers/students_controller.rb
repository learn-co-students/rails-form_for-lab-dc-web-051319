class StudentsController < ApplicationController


  #Index is plural because it shows all students
  def index
    @students = Student.all
  end

  #Creates a new student
  def new
    @student = Student.new
  end

  #Utilizes the new student and assigns parameters based on the form
  def create
    @student = self.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    redirect_to student_path(@student.id)
  end

  #Shows this instance of student
  def show
    @student = Student.find(params[:id])
  end

  #Edits this instance of student, sends to edit form
  def edit
    @student = Student.find(params[:id])
  end

  #Updates new student and then redirects to show page to show instance of student
  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    #@student = Student.update(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student.id)
  end

end
