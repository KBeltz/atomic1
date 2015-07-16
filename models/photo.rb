class Photo < ActiveRecord::Base
  belongs_to :photographer
  has_many :albums
end
