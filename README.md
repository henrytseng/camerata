# Camerata

A serializer for JSONAPI (jsonapi.org) included with a host of decoupled tools for fast and flexible responses.


## Design

Camerata aims to be opinionated but is designed to be used piece-meal decoupled from existing tools.  We designed it to go hand-in-hand with ActiveRecord but not require ActiveRecord.

We've also included examples which we use as use cases to test against following the prescribed methods of usage.  If anything in the documentation is missing take a look at the examples first.


## Features

- JSONAPI Spec compatible
- Decoupled architecture and modifiable responses through middleware and hooks
- Familiar and easy to debug declarative DSL
- Metadata support
- Allows building serialized responses for aggregated queries
- Validation support
- Pagination
- Sorting
- Eager loading support for relationships and incldues
- Router based links
- Cache integration

- Write directly to socket
    - Add support for yajl-ruby
        - Direct socket connection
        - Rack Request
        - Rack Response
- Benchmark tests for:
    - Large number of properties
    - Large property value
    - Large number or relationships
    - Support for relationship-through-relationships


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'camerata'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install camerata


## Usage

TODO: Write usage instructions here


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

To start documentation server pages run

    $ yard server --reload


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/henrytseng/camerata. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Camerata project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/henrytseng/camerata/blob/master/CODE_OF_CONDUCT.md).


## What does Camerata mean?

What does the word camerata mean?  Why camerata?

Camerata is a shout out to an analogy coined by Jessica Kerr at RubyConf 2019.  Rubyists are akin to the Florentine Camerata coming together as a community from varying disciplines.

The modern term camerata refers to a small chamber orchestra or choir.  An API is likewise in many projects the collaboration of several different hands in a harmonizing composition of services.  So deep.
