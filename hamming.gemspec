# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name              = "hamming"
  s.version           = "0.1.0"
  s.summary           = "Hamming calculations"
  s.authors           = ["elcuervo"]
  s.licenses          = %w[MIT]
  s.email             = ["elcuervo@elcuervo.net"]
  s.homepage          = "http://github.com/elcuervo/hamming"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files test`.split("\n")
end
