require File.expand_path('../lib/foreman_rackhd_plugin/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'foreman_rackhd_plugin'
  s.version     = ForemanRackhdPlugin::VERSION
  s.licenses     = ["GPL-3.0"]
  s.authors     = ["Cyril Nleng"]
  s.email       = ['cyril.nleng@emc.com']
  s.homepage    = %q{https://github.com/cnleng/foreman_rackhd_plugin}
  s.summary     = "MaaS RackHD Plugin for Foreman"
  # also update locale/gemspec.rb
  s.description = "MaaS RackHD Plugin engine for Foreman"

  s.files = Dir['{app,config,db,lib,locale}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rdoc'
end
