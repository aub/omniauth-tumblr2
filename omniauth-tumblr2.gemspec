# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'omniauth-tumblr2/version'

Gem::Specification.new do |s|
  s.name        = 'omniauth-tumblr2'
  s.version     = Omniauth::Tumblr2::VERSION
  s.authors     = ['Aubrey Holland']
  s.email       = ['aubreyholland@gmail.com']
  s.homepage    = 'https://github.com/aub/omniauth-tumblr2'
  s.summary     = 'OmniAuth strategy for the Tumblr API v2'
  s.description = 'OmniAuth strategy for the Tumblr API v2'

  s.rubyforge_project = 'omniauth-tumblr2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'  
end
