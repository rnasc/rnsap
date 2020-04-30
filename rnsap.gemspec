# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'rnsap'
  s.version = '0.1.7'
  s.licenses = ['MIT']
  s.date = '2020-04-30'
  s.summary = 'Facilitates SAP RFC calls in Ruby'
  s.description = ''
  s.authors = ['Rogerio Nascimento']
  s.homepage    = 'https://github.com/rnasc/rnsap'
  s.metadata    = { 'source_code_uri' => 'https://github.com/rnasc/rnsap' }
  s.add_runtime_dependency 'nwrfc', '~> 0.0.9'

  s.files = [
    'lib/rnsap.rb'
  ]
  s.require_paths = ['lib']
end
