
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'camerata/version'

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
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|examples)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency             "activesupport", "~> 6.0"
  spec.add_dependency             "oj", "~> 3.10"
  spec.add_dependency             "sorbet-runtime"
  spec.add_development_dependency "activerecord", "~> 6.0"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "factory_bot", "~> 6.1"
  spec.add_development_dependency "faker", "~> 2.7"
  spec.add_development_dependency "pry", "~> 0.12"
  spec.add_development_dependency "pry-byebug", "~> 3.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.81"
  spec.add_development_dependency "simplecov", "~> 0.17"
  spec.add_development_dependency "sorbet", "~> 0.4"
  spec.add_development_dependency "sqlite3", "~> 1.4"
end

