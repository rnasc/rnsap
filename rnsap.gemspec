# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'rnsap'
  s.version = '0.4.10'
  s.licenses = ['MIT']
  s.date = '2020-04-30'
  s.summary = 'Facilitates SAP RFC calls in Ruby'
  s.description = 'By encapsulating SAP''s NW RFC library calls, Ruby routines can access SAP power in a simpler manner'
  s.authors = ['Rogerio Nascimento']
  s.homepage    = 'https://github.com/rnasc/rnsap'
  s.metadata    = { 'source_code_uri' => 'https://github.com/rnasc/rnsap' }
  s.add_runtime_dependency 'nwrfc', '~> 0.0.9'
  s.add_development_dependency 'rspec'

  s.files = 
    Dir['lib/**/*.rb'] + 
    Dir['lib/preq_detail/**/*.rb'] +
    Dir['lib/helper/**/*.rb'] 

  s.require_paths = ['lib']
end
