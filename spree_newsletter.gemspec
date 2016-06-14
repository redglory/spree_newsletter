# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_newsletter'
  s.version     = '3.0'
	s.summary     = 'Gema para suscribir contactos a una tabla de la base de datos llamada Newsletter.'
  s.description = s.summary
  s.required_ruby_version = '>= 2.0.0'

 	s.author    = 'Martín Mariño'
	s.email     = 'martin.mbosco@web-experto.com.ar'
	s.homepage  = 'http://gitlab.web-experto.com.ar/spree-extensions/spree_newsletter.git'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 3.0'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
