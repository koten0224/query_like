# frozen_string_literal: true

require_relative "lib/query_like/version"

Gem::Specification.new do |spec|
  spec.name = "query_like"
  spec.version = QueryLike::VERSION
  spec.authors = ["koten0224"]
  spec.email = ["koten0224@gmail.com"]

  spec.summary = "Query Like"
  spec.description = "Make your array searching more elegant,just like model query."
  spec.homepage = "https://github.com/koten0224/query_like"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/koten0224/query_like"
  spec.metadata["changelog_uri"] = "https://github.com/koten0224/query_like/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
