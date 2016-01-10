# Xspf2spotify

Convert .xspf format playlists to Spotify compatible format, ready for importing

Hint: Can be used in conjunction with https://github.com/stu247/spl to extract playlists from Sonos devices and put them in Spotify :)

## Installation

Install the gem:

    $ gem install xspf2spotify

## Usage

    xspf2spotify playlist.xspf > spotifylist.txt
    
You can then copy the contents of the spotifylist.txt into your clipboard (on OSX you can pipe directly to `pbcopy`) and paste it directly into the Spotify desktop app.

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rspec` to run the tests.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joffotron/xspf2spotify. 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to 
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
