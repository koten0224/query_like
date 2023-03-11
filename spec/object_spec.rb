# frozen_string_literal: true

RSpec.describe Object do
  it { is_expected.to be_respond_to :QueryLike }

  context '#QueryLike' do
    subject { QueryLike([]) }
    it { is_expected.to be_a QueryLike::Query }
  end
end
