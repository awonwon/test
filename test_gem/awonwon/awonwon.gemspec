# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awonwon/version'

Gem::Specification.new do |spec|
  spec.name          = "awonwon"
  spec.version       = Awonwon::VERSION #在Version.rb中定義
  spec.authors       = ["qwerw2"]
  spec.email         = ["er450203@gmail.com"]
  spec.summary       = %q{Try To Make A Ruby Gem}
  spec.description   = %q{Try To Make A Ruby Gem}
  spec.homepage      = "" #說明Gem的Souce Code所在
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
