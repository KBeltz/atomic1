class Photo < ActiveRecord::Base
  belongs_to :photographer
  has_and_belongs_to_many :albums

  validates :title, presence: true

  def self.top_photo?(photo)
    if photo.albums.length >= 3
      true
    else
      false
    end
  end
end
