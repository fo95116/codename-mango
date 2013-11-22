class WritersController < ApplicationController

#Render JSON showing each author and all their associated narratives
  def index
    @writers = Writer.all
    arr=[]
    @writers.each do |w|
        @narratives = Narrative.find_all_by_writer_id(w.id)
        @narratives.each do |n|
          @writer = {}

          @writer[:title] = n.title
          @writer[:name]=w.name
          @writer[:story]=n.story
          @writer[:writer_id]=w.id
          @writer[:narrative_id]=n.id
           arr << @writer
        end
    end
    respond_to do |format|
         format.html
         format.json { render :json => arr }
     end
        # render :json => arr

  end

  def new
    @writer = Writer.new
  end

  def create
    @writer= Writer.create(params[:writer])
    redirect_to writers_path
  end

# Render JSON to show all narratives by a specific writer
# When more than one image is associated with a narrative, need to change this json code
  def show
    @writer=Writer.find(params[:id])
    @narratives=Narrative.find_all_by_writer_id(params[:id])
    narr_array=[]
    @narratives.each do |n|
      story={}
      story[:image_id]=ImageNarratives.find_by_narrative_id(n.id).image_id
      story[:title]=n.title
      story[:story]=n.story
      story[:narrative_id]=n.id
      story[:name]=@writer.name
      story[:image_url]=Image.find(ImageNarratives.find_by_narrative_id(n.id).image_id).url
      narr_array << story
    end
    render :json => narr_array
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
