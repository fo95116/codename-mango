class Writer < ActiveRecord::Base
  attr_accessible :name, :provider, :uid
  has_many :narratives, dependent: :destroy
  has_many :comments, through: :narratives
  has_many :votes, through: :narratives
  has_many :images, through: :narratives

  validates :name, :provider, :uid, presence: true


  def self.create_with_omniauth(auth)
    create! do |writer|
      writer.provider = auth["provider"]
      writer.uid = auth["uid"]
      writer.name = auth["info"]["name"]
    end
  end
end
