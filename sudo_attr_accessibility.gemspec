# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sudo_attr_accessibility/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Gert Goet"]
  gem.email         = ["gert@thinkcreate.nl"]
  gem.description   = %q{This gem is obsolete due to renaming. Please use su_attr_accessibility}
  gem.summary       = %q{This gem is obsolete due to renaming. Please use su_attr_accessibility}
  gem.homepage      = "https://github.com/eval/sudo_attr_accessibility"
  gem.license       = "MIT"
  gem.post_install_message = File.read("PostInstall.txt")

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "sudo_attr_accessibility"
  gem.require_paths = ["lib"]
  gem.version       = SudoAttrAccessibility::VERSION
  gem.required_ruby_version = '>= 1.8.7'

  gem.add_dependency "activesupport", ">= 3.0.0"
  gem.add_dependency "activemodel", ">= 3.0.0"
  gem.add_dependency "su_attr_accessibility", ">= 0.5.0"

  gem.add_development_dependency "rspec", "~> 2.7.0"
  gem.add_development_dependency "ZenTest", "~> 4.6.2"
end
