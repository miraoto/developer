# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'developer/version'

Gem::Specification.new do |spec|
  spec.name          = "developer"
  spec.version       = Developer::VERSION
  spec.authors       = ["miraoto"]
  spec.email         = ["miraoto@gmail.com"]

  spec.summary       = %q{General-purpose developer tool.}
  spec.description   = %q{General-purpose developer tool for private.}
  spec.homepage      = "https://github.com/miraoto/developer"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "better_errors"
  spec.add_dependency "pry-rails"
  spec.add_dependency "pry-byebug"
  spec.add_dependency "pry-doc"
  spec.add_dependency "pry-coolline"
  spec.add_dependency "rubocop"
end
