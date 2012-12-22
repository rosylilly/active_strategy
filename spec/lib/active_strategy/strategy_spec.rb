require 'spec_helper'

describe ActiveStrategy::Strategy do
  let(:dummy_strategy) do
    Class.new do
      include ActiveStrategy::Strategy

      attr_reader :dummy
    end
  end

  describe '.new' do
    subject(:strategy) { dummy_strategy.new(:dummy => true) }

    it 'assigned dummy' do
      strategy.dummy.should be_true
    end
  end
end
