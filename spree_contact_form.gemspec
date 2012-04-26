# encoding: UTF-8
version = File.read(File.expand_path("../GEM_VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_contact_form'
  s.version     = version
  s.summary     = 'Adds a contact form for your spree site'
  s.description = 'Add a contact form for your spree website, you can setup topics and when the user submits the form, it is emailed to the site admin'
  s.required_ruby_version = '>= 1.9.3'

  s.author            = 'Josh Nussbaum'
  s.email             = 'joshnuss@gmail.com'
  s.homepage          = 'http://spreecommerce.com'
  s.rubyforge_project = 'spree_contact_form'

  s.files        = Dir['README.md', 'lib/**/*', 'app/**/*', 'config/*', 'config/locales/*', 'db/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false

  s.add_dependency('spree_core',  '>= 1.0.0')
end

