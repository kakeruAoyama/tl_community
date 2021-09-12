class LecturesController < ApplicationController

  def index
    @lectures = Lecture.all
  end

  def show
    @lecture = Lecture.find(params[:id])
    @comments = @lecture.comments
    @comment = Comment.new
  end

  private
  def lecture_params
    params.require(:lecture).permit(:name,:teacher)
  end
end
