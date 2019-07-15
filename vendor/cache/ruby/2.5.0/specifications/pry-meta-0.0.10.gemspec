# -*- encoding: utf-8 -*-
# stub: pry-meta 0.0.10 ruby lib

Gem::Specification.new do |s|
  s.name = "pry-meta".freeze
  s.version = "0.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nando Vieira".freeze]
  s.date = "2014-12-20"
  s.description = "Meta package that requires several pry extensions.".freeze
  s.email = ["fnando.vieira@gmail.com".freeze]
  s.rubygems_version = "3.0.4".freeze
  s.summary = "Meta package that requires several pry extensions.".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-remote>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<awesome_print>.freeze, [">= 0"])
    else
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<pry-remote>.freeze, [">= 0"])
      s.add_dependency(%q<awesome_print>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<pry-remote>.freeze, [">= 0"])
    s.add_dependency(%q<awesome_print>.freeze, [">= 0"])
  end
end
