class ImageNarratives < ActiveRecord::Base
  attr_accessible :narrative_id, :image_id

  belongs_to :narrative
  belongs_to :image
end
