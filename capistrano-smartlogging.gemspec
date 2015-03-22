# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/smartlogging/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-smartlogging"
  spec.version       = Capistrano::Smartlogging::VERSION
  spec.authors       = ["Gen Takahashi"]
  spec.email         = ["gendosu@gmail.com"]

  spec.summary       = "Capistrano output to log file"
  spec.description   = "formatter with additional processing to write on the stdout and log file."
  spec.homepage      = "https://github.com/gendosu/capistrano-smartlogging"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sshkit", [">= 1.6.1", "!= 1.7.0"]

  spec.add_development_dependency "bundler"#, "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "rspec", "~> 3.1.0"
end
