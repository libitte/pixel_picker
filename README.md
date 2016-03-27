# PixelPicker

A wrapper of RMagick which detects the color name used most often from a image file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pixel_picker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pixel_picker

## Usage

Let's first see a basic example of detecting a most used color name with command-line tool.

```bash
$ bin/color_name /path/to/image/file
purple
```

On the other hand, if we want the ruby interface, we can use `PixelPicker::ColorName.new`.

```ruby
pixel = PixelPicker::ColorName.new('/path/to/image/file')

# Get the color palette from a image file
pixel.palette

# Get a color name which used most often
pixel.max

# Get a color name which used least often
pixel.min
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/libitte/pixel_picker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

