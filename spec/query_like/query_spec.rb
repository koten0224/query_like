# frozen_string_literal: true

RSpec.describe QueryLike::Query do
  let(:object) { QueryLike::Query.new([]) }

  context "#dup" do
    let(:dup_object) { object.dup }

    it 'can copy object' do
      expect(dup_object).to be_a QueryLike::Query
      expect(dup_object).not_to eq object
    end

    context 'can receive block' do
      subject { object.dup { foo } }

      before do
        allow_any_instance_of(described_class).to receive(:foo)
      end
      
      it 'should evaluate in instance' do
        expect_any_instance_of(described_class).to receive(:foo).once
        subject
      end
    end
  end
end
