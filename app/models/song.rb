class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name:name)
  end
  def artist_name
    self.artist ? self.artist.name : nil
  end
  def song_genre_id=(id)
    self.genre.id = id.to_i
  end
  def song_genre_id
    self.genre.id ? self.genre.id : nil
  end
end
