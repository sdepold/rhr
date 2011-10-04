$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rhr/version'

Gem::Specification.new "rhr", RHR::VERSION do |s|
  s.summary = "Ruby Hypertext Refinements -- the ease of PHP with the elegance of Ruby"
  s.authors = ["Michael Grosser"]
  s.email = "michael@grosser.it"
  s.homepage = "http://github.com/grosser/rhr"
  s.files = `git ls-files`.split("\n")
end
