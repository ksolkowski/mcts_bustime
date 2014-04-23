# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "mcts_bustime"
  spec.version       = "0.0.1"
  spec.authors       = ["Kevin Solkowski"]
  spec.email         = ["ksolkowski@gmail.com"]
  spec.description   = %q{Gem for talking to the mcts bustime api}
  spec.summary       = %q{Summary of this gem!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = ["lib/mcts_bustime.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
