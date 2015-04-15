lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'disthub/version'

Gem::Specification.new do |spec|
	spec.name          = "disthub"
	spec.version       = Disthub::VERSION
	spec.authors       = ["Peter Wilmott"]
	spec.email         = ["p@p8952.info"]
	spec.summary       = %q{Distributed issues for Git/GitHub.}
	spec.homepage      = "https://github.com/p8952/disthub"
	spec.license       = "GPL3"

	spec.files         = `git ls-files -z`.split("\x0")
	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
	spec.require_paths = ["lib"]

	spec.add_development_dependency "bundler", "~> 1.6"
	spec.add_development_dependency "rake", "~> 10.0"
end
