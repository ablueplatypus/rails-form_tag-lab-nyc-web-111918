require 'byebug'
class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new

  end

  def create
    # Student.create(student_params)
    # byebug
    Student.create(student_params)
    redirect_to students_path
  end

  private

  def student_params
    params.permit(:first_name,:last_name)
  end

end
