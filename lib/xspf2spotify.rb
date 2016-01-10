require 'xspf2spotify/parser'
require 'xspf2spotify/generator'
require 'uri'

module Xspf2spotify
  class App

    def self.run!
      if ARGV[0].nil?
        puts 'Please supply the .xspf file as the first argument'
        exit 1
      end

      filename = ARGV.fetch(0)
      input_file = File.read(filename)

      stream = Parser.parse(input_file)
      STDERR.puts "Generating playlist: #{stream.title}"
      STDERR.puts '------------------------------------'

      Generator.new(stream).songs.each { |link| puts link }
      STDERR.puts '               DONE                 '
      STDERR.puts '------------------------------------'

    end

  end
end

