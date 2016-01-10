require 'spec_helper'
require 'xspf2spotify/parser'

module Xspf2spotify
  describe Parser do
    let(:file) { File.read(File.join(__dir__, 'fixtures', 'playlist.xspf')) }
    subject { Parser.parse(file) }

    it 'extracts the playlist title' do
      expect(subject.title).to eq 'Test Playlist'
    end

    it 'extracts the track locations' do
      expect(subject.locations).to be_kind_of(Array)
    end

    it 'extacts the full track location data' do
      expect(subject.locations.first).to eq 'x-sonos-spotify:spotify%3atrack%3a4S7okqiTCIeIH2G8dOi9k9?sid=12&flags=8224&sn=3'
    end

  end
end