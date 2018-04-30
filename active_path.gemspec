$:.push File.expand_path('../lib', __FILE__)
require 'active_path/version'

Gem::Specification.new do |s|
  s.name        = 'active_path'
  s.version     = ActivePath::VERSION
  s.date        = '2018-04-28'
  s.summary     = "ActivePath"
  s.description = "ActivePath makes your frontend more extensible and easier to debug"
  s.authors     = ["Ryan Tulino"]
  s.email       = 'rtulino@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://rubygems.org/gems/active_path'
  s.required_ruby_version = '>= 2.2.0'
  s.add_dependency 'rails', '~> 5'
end