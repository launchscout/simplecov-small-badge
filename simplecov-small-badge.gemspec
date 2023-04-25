# frozen_string_literal: true

version = File.read(File.expand_path('VERSION', __dir__)).strip

Gem::Specification.new do |s|
  s.required_ruby_version = '>=2.5.0'
  s.name        = 'simplecov-small-badge'
  s.version     = version
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Marc Grimme', "Bill Barnett"]
  s.email       = ['marc.grimme at gmail dot com', "bill@launchscout.com"]
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/launchscout/simplecov-small-badge'
  s.summary     = %(Small Badge generator for SimpleCov coverage tool for Ruby)

  s.rubyforge_project = 'simplecov-small-badge'

  s.add_dependency 'repo-small-badge', '~> 0.2.7'
  s.add_dependency 'simplecov', '~> 0.17'
  s.add_development_dependency 'rake', '~> 13'
  s.add_development_dependency 'rspec', '~> 3.8'
  s.add_development_dependency 'rubocop', '~> 1.0'
  s.add_development_dependency 'rubycritic', '~> 4.1'
  s.add_development_dependency 'rubycritic-small-badge', '~> 0.2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`
                    .split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
