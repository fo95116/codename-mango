class ImagesController < ApplicationController

def index
    @images=Image.all
    @narratives = Narrative.all
    @image_narratives= ImageNarrative.all

    @images.each do |image|
      @narratives.each do |n|
      @image_summary[:writer] = n.writer.name
      @image_summary[:image_id]=image.id
      @image_summary[:title]=n.title
      @image_summary[:story]=n.story
      end
    end
    # Creates json summarizing all narrative titles and their authors
    render :json => @image_summary
end

def show
  @image=Image.find(params[:id])
  @image_narratives=ImageNarrative.find_all_by_image_id(params[:id])
  @narratives=Narrative.all
  @feedbacks=Feedback.all
end

end
