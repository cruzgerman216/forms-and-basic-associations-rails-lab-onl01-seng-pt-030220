class Genre < ActiveRecord::Base
  belongs_to :Artist
  belongs_to :genre 
  has_many :notes
end
