# QueryLike

Make your array searching more elegant,just like model query.
When you search some object(s) in an array, you may give a block to define the criteria.
However, most of the patterns of these criteria may be duplicate like:
```ruby
  array.find do |record|
    record[:name] == name &&
    record[:age] == age &&
    record[:gender] == gender &&
    record[:status] == status &&
    record[:height] == height &&
    .....
  end
```

The regular way of array searching always be long, complicated and duplicated.

How about make it more elegant?
Just like model queries always do:
```ruby
  QueryLike(array).find_by(
    name: name,
    age: age,
    gender: gender,
    status: status,
    height: height,
    ...
)
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'query_like'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install query_like

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/query_like. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/query_like/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the QueryLike project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/query_like/blob/master/CODE_OF_CONDUCT.md).
