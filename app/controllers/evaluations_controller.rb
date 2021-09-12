class EvaluationsController < ApplicationController


  def index
    
  end

  def show
    @evaluations = Evaluation.all
  end

  def new
    @evaluations = Evaluation.new
  end

  def create
    evaluation = Evaluation.new(evaluation_params)
    evaluation.user_id = current_user.id
    evaluation.lecture_id = params[:lecture_id]
    if evaluation.save!
      redirect_to evaluations_show_path(params[:lecture_id])
    else
      redirect_to evaluations_new_path(paramas[:lecture_id])
    end
  end

  def edit
  end

  def update
  end

  private

  def evaluation_params
    params.permit(:overall, :understandability, :usefulness, :easy, :assignment)
  end

end