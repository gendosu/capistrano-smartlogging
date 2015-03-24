# Capistrano::smartlogging

formatter with additional processing to write on the stdout and log file.

## Require

Capistrano 3

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-smartlogging'
```
or
```ruby
gem 'capistrano-smartlogging', github: 'gendosu/capistrano-smartlogging'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-smartlogging

## Usage

write Capfile

    require 'capistrano/smartlogging'

write config/deploy.rb

    set :smartlogging_file, 'log/smartlogging.log'

FIXME
upgrade from <= v0.1.1 to v0.1.2
set :format option
old version was :dlogging
v0.1.2
set to :pretty or none set(default)
:dlogging formatter was removed

## Development

TODO

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
