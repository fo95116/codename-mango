class Feedback < ActiveRecord::Base
  attr_accessible :comment, :writer_id, :narrative_id
  belongs_to :writer
  belongs_to :narrative

validates :comment, presence: true
validates :narrative_id, presence: true

end
