class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def create
  @feedback = Feedback.create(params[:id])
  redirect_to feedbacks_path
  end

end
