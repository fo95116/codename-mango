class NarrativesController < ApplicationController

  def index
    @narratives = Narrative.all
    @feedback = Feedback.new
  end

  def new
    @narrative = Narrative.new
    @image = Image.find(params[:id])
  end

  def create
    new_narrative = Narrative.create(params[:narrative])
    redirect to narratives_path
  end

  def show
    @narrative = Narrative.find(params[:id])
    @feedback = Feedback.new
  end

  def edit
    @narrative = Narrative.find(parms[:id])
  end

  def update
    revised_narrative = Narrative.find(params[:id])
    revised_narrative.update_attributes(params[:narrative])
    redirect_to narratives_path
  end

  def destroy
    Narrative.delete(params[:id])
    redirect_to narratives_path
  end

end
