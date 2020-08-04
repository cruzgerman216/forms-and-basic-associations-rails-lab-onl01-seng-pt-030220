class Song < ActiveRecord::Base
  def song_artist_name=(name)
    self.artist = Artist.find_or_create_by(name:name)
  end
end
