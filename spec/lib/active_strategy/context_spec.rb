require 'spec_helper'

describe ActiveStrategy::Context do
  subject { User }

  it { should respond_to(:strategy) }

  describe '.strategy' do
    class SampleStrategy
      include ActiveStrategy::Strategy

      attr_reader :class, :user

      def sample
        self
      end
    end

    context 'when instance method' do
      before do
        User.strategy(:sample)
      end

      it('User#sample exists') do
        User.instance_methods.should include(:sample)
      end

      it 'called SampleStrategy#sample' do
        SampleStrategy.any_instance.should_receive(:sample)
        User.new.sample
      end

      it 'assigned uer' do
        user = User.new
        user.sample.user.should == user
      end
    end

    context 'when class method' do
      before do
        User.strategy(:sample, class_method: true)
      end

      it('User.sample exists') do
        User.methods.should include(:sample)
      end

      it 'called SampleStrategy#sample' do
        SampleStrategy.any_instance.should_receive(:sample)
        User.sample
      end

      it 'assigned class' do
        User.sample.class.should == User
      end
    end
  end
end
