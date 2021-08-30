class Api::V1::StudentsController < ApplicationController

  def index 
  @students = Student.all
  render json: @students
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student
    else 
      render json: {error: 'Error creating student'}
  end
end 

  def show
    @student = Student.find(params[:id])
    render json: @student
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end 
private

  def student_params
  params.require(:student).permit(:name, :year, :category)
  end
end
