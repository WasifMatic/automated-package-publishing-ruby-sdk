Gem::Specification.new do |s|
  s.name = 'automated-package-publishing-sdk'
  s.version = '1.0.27'
  s.summary = 'SDK for using'
  s.description = 'Package Publishing'
  s.authors = ['Package Publisher']
  s.email = ['support@pp.org']
  s.homepage = 'https://www.pp.org'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.3')
  s.add_dependency('apimatic_core', '~> 0.3.20')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.6')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
