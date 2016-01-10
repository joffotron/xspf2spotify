require 'spec_helper'
require 'xspf2spotify/generator'


module Xspf2spotify
  describe Generator do
    let(:file) { File.read(File.join(__dir__, 'fixtures', 'playlist.xspf')) }
    let(:stream) { Parser.parse(file) }
    subject { described_class.new(stream).songs }

    describe '#songs' do
      it 'produces a list of songs' do
        expect(subject).to be_kind_of(Array)
      end

      it 'formats the songs as spotify URIs' do
        expect(subject.first).to eq 'spotify:track:4S7okqiTCIeIH2G8dOi9k9'
      end
    end

  end
end