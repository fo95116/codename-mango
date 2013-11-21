class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def create
  new_feedback = Feedback.create(params[:feedback])
  redirect_to feedback_path(new_feedback)
  end

  def show
  @feedback = Feedback.find(params[:id])
  end

  def destroy
    Feedback.delete(params[:id])
    redirect_to feedbacks_path
  end

end
