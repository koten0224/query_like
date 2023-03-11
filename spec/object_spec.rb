# frozen_string_literal: true

RSpec.describe Object do
  subject { Object.new }
  it { is_expected.to be_respond_to :QueryLike }
end
