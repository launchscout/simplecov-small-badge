# SimpleCov Small Badge
*SimpleCovBadge* is a gem which produces a repo status badge indicating the spec/test coverage as determined by
[SimpleCov](https://github.com/simplecov-ruby/simplecov).

## Installation
This gem is dependent on the [repo-small-badge](https://github.com/marcgrimme/repo-small-badge) gem which produces the
SVG badge.
```ruby
# Gemfile
gem "simplecov-small-badge", require: false
```

This gem was inspired by the gem [simplecov-badge](https://github.com/matthew342/simplecov-badge).

## Usage
When integrated with `SimpleCov` you configure the `SimpleCovSmallBadge` gem as any formatter can be configured. The
recommended default integration is as follows:
```ruby
require "simplecov_small_badge"

SimpleCov.start do
  # call SimpleCov::Formatter::BadgeFormatter after the normal HTMLFormatter
  SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCovSmallBadge::Formatter
  ])
end

# SimpleCov::Formatter::BadgeFormatter specific config
SimpleCovSmallBadge.configure do |config|
  # does not created rounded borders
  config.rounded_border = true
  # set the background for the title to darkgrey
  config.background = "#ffffcc"
end
```

## Development
### Setup
In a terminal run:
```sh
git clone git@github.com:launchscout/simplecov-small-badge.git
cd simplecov-small-badge
bin/setup
```

### Linting & Specs
* Run the linter with: `bin/standardrb`
* Run the specs with: `bin/rspec`

### Building & Installing the Gem
In a terminal run:
```sh
gem build simplecov-small-badge.gemspec
gem install simplecov-small-badge.gem
```

## Contributing
GitHub's guide for [Contributing to Open Source](https://guides.github.com/activities/contributing-to-open-source/)
offer's the best advice.

#### tl;dr
1. [Fork it](https://help.github.com/articles/fork-a-repo/)!
1. Create your feature branch: `git checkout -b cool-new-feature`
1. Commit your changes: `git commit -am 'Added a cool feature'`
1. Push to the branch: `git push origin cool-new-feature`
1. [Create new Pull Request](https://help.github.com/articles/creating-a-pull-request/).