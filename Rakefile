#!/usr/bin/env rake

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'active_path/version'

desc "Release version #{ActivePath::VERSION} of the gem"
task :release do

  system "git tag -a v#{ActivePath::VERSION} -m 'Tagging #{ActivePath::VERSION}'"
  system 'git push --tags'

  system "gem build active_path.gemspec"
  system "gem push active_path-#{ActivePath::VERSION}.gem"
  system "rm active_path-#{ActivePath::VERSION}.gem"
end
