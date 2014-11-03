# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rails-security-backports/version'

Gem::Specification.new do |s|
  s.name = "rails-security-backports"
  s.version = RailsSecurityBackports::Version.to_s

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcos Wright Kuhns"]
  s.date = "2014-11-03"
  s.description = "A collection of security-related Ruby & Rails patches backported from fixes in modern Ruby & Rails."
  s.email = "marcos@wrightkuhns.com"
  s.homepage = "https://github.com/metavida/rails-security-backports"
  s.licenses = ["MIT"]

  s.files = `git ls-files`.split("\n")
  s.test_files = s.files.grep(%r{^(test|spec|features,integration_test)/})

  s.rdoc_options = ["--main", "README.rdoc", "--title", "rails-security-backports-#{RailsSecurityBackports::Version}", "--inline-source", "--exclude", "tasks", "CHANGELOG.md"]
  s.extra_rdoc_files = s.files.grep(%r{\.rdoc$}) + %w{LICENSE}

  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.19"
  s.summary = "Backports of security patches for Ruby & Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["= 0.9.2"])
      s.add_development_dependency(%q<rails>, ["~> 1.2"])
    else
      s.add_dependency(%q<rake>, ["= 0.9.2"])
      s.add_dependency(%q<rails>, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<rake>, ["= 0.9.2"])
    s.add_dependency(%q<rails>, ["~> 1.2"])
  end
end

