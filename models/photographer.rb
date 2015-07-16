class Photographer < ActiveRecord::Base
  validates :id, presence: true
  # self.primary_key = 1
end
