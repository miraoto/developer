# Developer

summarized debugging gem and scaffold template to use by rail development well in.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'developer'
end
```
Notice:This gem recommends that I install it only in a development environment.

## Usage

### Use rubocop

```ruby:.rubocop.yml
inherit_gem:
  developer: .rubocop.yml
```

### Use scaffold templates

```ruby
# config/application.rb
module SampleProduct
  class Application < Rails::Application
  ...
  config.generators do |g|
    g.templates = %W(#{Gem::Specification.find_all_by_name('developer').first.full_gem_path}/lib/templates)
  end
  ...
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/miraoto/developer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

