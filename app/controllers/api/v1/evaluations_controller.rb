class Api::V1::EvaluationsController < ApplicationController
before_action :set_student

#api/v1/students/1/evaluationss
  def index 
      @evaluations = Evaluation.all
      render json: @evaluations
    end

  def create
    @evaluation = @student.evaluations.new(evaluation_params)
    if @evaluation.save
      render json: @evaluation
    else 
      render json: {error: 'Error creating evaluation'}
    end
  end

  def show
    @evaluation = Evaluation.find(params[:id])
    render json: @evaluation
  end

  def destroy
    @evaluation = Evaluation.find(params[:id])
    @evaluation.destroy
  end

  private

  def evaluation_params
  params.require(:evaluation).permit(:attending, :competency)
  end

  def set_student
    @student = Student.find(params[:student_id])
    #based on api/vi/students/v1/evaluations
  end
  
end
