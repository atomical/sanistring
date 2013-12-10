# Sanistring

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'sanistring'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sanistring

## Usage

```ruby

  # alphanumeric
  Sanistring.sanitize('../path/to/some/file', whitelist: :alphanumeric)

  # custom whitelist
  Sanistring.sanitize('../path/to/some/file', whitelist: '+-*/=')

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
