# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-extract-json"
  spec.version       = "0.1.1"
  spec.authors       = ["neguse"]
  spec.email         = ["negcee@gmail.com"]

  spec.summary       = %q{Fluent::ExtractJsonFilter is a fluentd plugin extracts single JSON object from record.}
  spec.homepage      = "https://github.com/neguse/fluent-plugin-extract-json"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "fluentd", "~> 0.12"
  spec.add_runtime_dependency "oj"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
