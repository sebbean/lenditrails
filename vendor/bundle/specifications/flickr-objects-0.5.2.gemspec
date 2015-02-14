# -*- encoding: utf-8 -*-
# stub: flickr-objects 0.5.2 ruby lib

Gem::Specification.new do |s|
  s.name = "flickr-objects"
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Janko Marohni\u{107}"]
  s.date = "2014-07-29"
  s.description = "This gem is an object-oriented wrapper for the Flickr API."
  s.email = ["janko.marohnic@gmail.com"]
  s.homepage = "http://janko-m.github.com/flickr-objects"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.4.5"
  s.summary = "This gem is an object-oriented wrapper for the Flickr API."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, [">= 0.7.6"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0.8"])
      s.add_runtime_dependency(%q<simple_oauth>, ["~> 0.1"])
      s.add_runtime_dependency(%q<multi_xml>, ["~> 0.4"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2"])
      s.add_development_dependency(%q<vcr>, [">= 2"])
      s.add_development_dependency(%q<activesupport>, [">= 3"])
      s.add_development_dependency(%q<will_paginate>, [">= 3"])
      s.add_development_dependency(%q<kaminari>, [">= 0.14"])
      s.add_development_dependency(%q<capybara>, [">= 2.1"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 2.35.1"])
    else
      s.add_dependency(%q<faraday>, [">= 0.7.6"])
      s.add_dependency(%q<faraday_middleware>, [">= 0.8"])
      s.add_dependency(%q<simple_oauth>, ["~> 0.1"])
      s.add_dependency(%q<multi_xml>, ["~> 0.4"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2"])
      s.add_dependency(%q<vcr>, [">= 2"])
      s.add_dependency(%q<activesupport>, [">= 3"])
      s.add_dependency(%q<will_paginate>, [">= 3"])
      s.add_dependency(%q<kaminari>, [">= 0.14"])
      s.add_dependency(%q<capybara>, [">= 2.1"])
      s.add_dependency(%q<selenium-webdriver>, [">= 2.35.1"])
    end
  else
    s.add_dependency(%q<faraday>, [">= 0.7.6"])
    s.add_dependency(%q<faraday_middleware>, [">= 0.8"])
    s.add_dependency(%q<simple_oauth>, ["~> 0.1"])
    s.add_dependency(%q<multi_xml>, ["~> 0.4"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2"])
    s.add_dependency(%q<vcr>, [">= 2"])
    s.add_dependency(%q<activesupport>, [">= 3"])
    s.add_dependency(%q<will_paginate>, [">= 3"])
    s.add_dependency(%q<kaminari>, [">= 0.14"])
    s.add_dependency(%q<capybara>, [">= 2.1"])
    s.add_dependency(%q<selenium-webdriver>, [">= 2.35.1"])
  end
end
