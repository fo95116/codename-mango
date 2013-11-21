class WritersController < ApplicationController

def index
  @writers = Writer.all
end

def new
  @writer = Writer.new
end

def create
  new_writer = Writer.create(params[:writer])
  redirect_to writers_path
end

def show
  @writer = Writer.find(params[:id])
  @narratives = Narrative.find_all_by_writer_id(params[:id])
  @feedbacks = Feedback.find_all_by_narrative_id()
end

def edit
  @writer = Writer.find(params[:id])
end

def update
  updated_writer = Writer.find(params[:id])
  updated_writer.update_attributes(params[:writer])
  redirect_to writers_path
end

def destroy
  Writer.delete(params[:id])
end

end
