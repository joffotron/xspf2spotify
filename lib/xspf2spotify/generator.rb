module Xspf2spotify

  class Generator

    def initialize(stream)
      @stream = stream
    end

    def songs
      spotify_songs = []
      @stream.locations.each do |location|
        spotify_songs << spotify_link(location)
      end
      spotify_songs
    end

    private

    def spotify_link(location)
      URI.unescape(location[/:(spotify.*)\?sid.*$/, 1])
    end

  end

end