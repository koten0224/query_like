# frozen_string_literal: true

require_relative "query_like/version"
require_relative "query_like/query"

module QueryLike
  class Error < StandardError; end
  # Your code goes here...
end

class Object
  def QueryLike(array)
    QueryLike::Query.new(array)
  end
end