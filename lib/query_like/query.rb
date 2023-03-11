# frozen_string_literal: true

module QueryLike
  class Query
    def initialize(records)
    end

    def dup(&block)
      object = super()
      object.instance_exec(&block) if block_given?
      object
    end
  end
end
