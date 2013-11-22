class ImagesController < ApplicationController

def index
    @images=Image.all
    @narratives = Narrative.all
    # @image_narratives= ImageNarratives.find_by_image_id()
    @writers=Writer.all

    # Creates json summarizing all narrative titles and their authors
    render :json => @images
    # render :json => @images
end

def show
  @image=Image.find(params[:id])
  @image_narratives=ImageNarratives.find_all_by_image_id(params[:id])
  @writers=Writer.all
  @narratives=Narrative.all
  @feedbacks=Feedback.all
  arr={}
  foo=[]

  @image_narratives.each do |img|
    arr[:imgnar]=img.id
    arr[:narrative_id]=img.narrative_id
    arr[:image_id]=img.image_id
    arr[:title]=img.narrative.title
    arr[:story]=img.narrative.story
    arr[:name]=img.narrative.writer.name
    foo << arr

  end
  render :json => foo

end

end

