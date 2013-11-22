class ImagesController < ApplicationController

def index
    @images=Image.all
    @narratives = Narrative.all
    @writers=Writer.all
    arr=[]
    @images.each do |img|
      @image_narratives=ImageNarratives.find_all_by_image_id(img.id)
      @image_narratives.each do |imgnar|
        record={}
        record[:image_id]=imgnar.id
        record[:narrative_id]=imgnar.narrative_id
        record[:title]=Narrative.find(imgnar.narrative_id).title
        record[:name]=Writer.find(Narrative.find(imgnar.narrative_id).writer_id).name
        arr << record
      end
    end
    # Creates json summarizing all narrative titles and their authors
    render :json => arr
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
    arr[:image_narrative_id]=img.id
    arr[:narrative_id]=img.narrative_id
    arr[:image_id]=img.image_id
    arr[:title]=img.narrative.title
    arr[:story]=img.narrative.story
    arr[:name]=img.narrative.writer.name
    arr[:writer_id]=img.narrative.writer_id
    foo << arr

  end
  render :json => foo

end

end

