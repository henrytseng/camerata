
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "camerata/version"

Gem::Specification.new do |spec|
  spec.name          = "camerata"
  spec.version       = Camerata::VERSION
  spec.authors       = ["Henry Tseng"]
  spec.email         = ["info@heycanvas.com"]

  spec.summary       = "A serializer for JSONAPI"
  spec.description   = "A serializer for JSONAPI included with a host of decoupled tools for fast and flexible responses"
  spec.homepage      = "https://github.com/henrytseng/camerata"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/henrytseng/camerata"
    spec.metadata["changelog_uri"] = "https://github.com/henrytseng/camerata/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "activerecord"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "faker"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "sorbet"
  spec.add_development_dependency "rubocop"
  spec.add_dependency             "activesupport"
  spec.add_dependency             "sorbet-runtime"
  spec.add_dependency             "oj"
end
