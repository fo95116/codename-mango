class Vote < ActiveRecord::Base
  attr_accessible :vote_type, :narrative_id, :writer_id
  belongs_to :narrative
  belongs_to :writer

validates :vote_type, presence: true
validates :narrative_id, presence: true



end
