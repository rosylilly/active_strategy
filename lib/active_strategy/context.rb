require 'active_support/concern'

module ActiveStrategy
  module Context
    extend ActiveSupport::Concern

    def self.define_stratgy_method(context, action, strategy)
      context.instance_eval do
        define_method(action) do |*args|
          strategy.new({ self.class.name.downcase => self }).
            send(action, *args)
        end
      end
    end

    module ClassMethods
      def strategy(action, options = {})
        options = options.reverse_merge(
          :class_method => false
        )

        strategy = "#{action}_strategy".classify.constantize

        context = self
        context = (class << self; self; end) if options[:class_method]

        Context.define_stratgy_method(context, action, strategy)
      end
    end
  end
end
