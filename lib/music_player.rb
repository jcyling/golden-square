# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

class MusicPlayer
  def initialize
    @tracks = []
  end

  def add(track)
    # Add track
    # track: a string
    @tracks << track
  end

  def list()
    # List tracks
    @tracks
  end

end