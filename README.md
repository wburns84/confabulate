# Confabulate

Config how you remember it should have been.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'confabulate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install confabulate

## Usage

Assign a config key-value pair:

```ruby
Config[:key] = 'value' # true
```

Retrieve a value for a key:

```ruby
Config[:key] # 'value'
Config[:unset_key] # ConfigError: Key 'unset_key' not set
```

Validations:

```ruby
Config.validate :key, ->(value) { value > 0 }

Config[:key] = 1 # true
Config[:key] # 1

Config[:key] = -2 # false
Config[:key] # 1
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/confabulate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
