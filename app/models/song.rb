class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_first_song
    self.songs.first
  end
  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if Drake is *not found*
    def haters
      puts "drake"
    end
    Artist.find_by(name: "Drake")? haters : Artist.create(name: "Drake")
    drake = Artist.find_by(name: "Drake")
    self.artist= drake

  end
end