.PHONY: *

default: test

build:
	rm -f *.gem
	gem build hamming.gemspec

publish: build
	gem push *.gem

console:
	irb -Ilib -rhamming

test:
	ruby -Ilib:spec spec/*_spec.rb
