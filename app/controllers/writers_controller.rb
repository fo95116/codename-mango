class WritersController < ApplicationController

def index
  @writers = Writer.all
  @narratives = Narrative.all
  @feedbacks = Feedback.find_all_by_narrative_id()

  @writers.each do |w|
    @writer = {}
    @writers.each do |w|
      @writer[:title] = Narrative.title
      @writer[:name]=w.name
      @writer[:writer_id]=w.id
    end

  end

  render :json => @writers
end

def new
  @writer = Writer.new
end

def create
  @writer= Writer.create(params[:writer])
  redirect_to writers_path
end

def show
  @writer = Writer.find(params[:id])
  @narratives = Narrative.find_all_by_writer_id(params[:id])

  @writer_summary=[]
  @narratives.each do |n|
    @feedbacks = Feedback.find_all_by_narrative_id(n.id)
    @feedbacks.each do |f|
      @writer_summary[:writer] = @writer.name
      @writer_summary[:title] = n.title
      @writer_summary[:story] = n.story
      @writer_summary[:comment] = f.comment
      @writer_summary[:feedback_id] = f.id
    end
  end
render :json => @writer_summary
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
