# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xspf2spotify/version'

Gem::Specification.new do |spec|
  spec.name          = 'xspf2spotify'
  spec.version       = Xspf2spotify::VERSION
  spec.authors       = ['Joseph Miller']
  spec.email         = ['joff@joff.codes']

  spec.summary       = %q{Convert .xspf format playlists to Spotify compatible format, ready for importings}
  spec.homepage      = 'https://github.com/joffotron/xspf2spotify'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'ox'
  spec.add_runtime_dependency 'sax-machine'
end
