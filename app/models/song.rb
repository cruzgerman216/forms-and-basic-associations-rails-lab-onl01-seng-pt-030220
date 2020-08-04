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
  # def genre_id=(id)
  #   self.genre.id = id.to_i
  # end
  # def genre_id
  #   self.genre ? self.genre.id : nil
  # end
  def genre_name
  self.genre.name if self.genre
  end

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def note_ids=(ids)
    ids.each do |content|
      unless content.empty?
        self.notes << Note.create(content: content)
        self.save
      end
    end
  end
end
