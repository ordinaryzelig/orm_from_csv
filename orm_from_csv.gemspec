# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "orm_from_csv/version"

Gem::Specification.new do |s|
  s.name        = "orm_from_csv"
  s.version     = ORMFromCSV::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jared Ning"]
  s.email       = ["jared@redningja.com"]
  s.homepage    = "https://github.com/ordinaryzelig/orm_from_csv"
  s.summary     = %q{Create instances of ORM objects from CSV}
  s.description = %q{Create instances of ORM (like ActiveRecord or Mongoid, anything that supports Model.new(attributes_as_hash)) objects from CSV}

  s.rubyforge_project = "orm_from_csv"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec', '2.5.0'
end
