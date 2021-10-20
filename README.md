[![CI Status](https://github.com/wendelscardua/golden_section_search/workflows/CI/badge.svg?branch=main)](https://github.com/wendelscardua/golden_section_search/actions?query=workflow%3ACI+branch%3Amain)
[![Gem Version](https://badge.fury.io/rb/golden_section_search.svg)](https://badge.fury.io/rb/golden_section_search)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/github/wendelscardua/golden_section_search)

# GoldenSectionSearch

Compute a local minimum / maximum of an arbitrary function

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'golden_section_search'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install golden_section_search

## Usage

To find a local minimum of a function defined by a proc, between `left_value` and `right_value`, with some `tolerance`:

```ruby
GoldenSectionSearch.find_minimum(proc, left_value, right_value, tolerance)
```

For finding a maximum value instead:

```ruby
GoldenSectionSearch.find_maximum(proc, left_value, right_value, tolerance)
```

Tolerance can be omitted, the default value being `1.0e-5`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wendelscardua/golden_section_search. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/wendelscardua/golden_section_search/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GoldenSectionSearch project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/wendelscardua/golden_section_search/blob/master/CODE_OF_CONDUCT.md).
