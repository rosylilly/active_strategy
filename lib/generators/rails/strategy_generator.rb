module Rails
  module Generators
    class StrategyGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      desc <<DESC
Description:
  Stubs out a strategy class in app/strategies directory.

  Examples:
    `rails g strategy login`

  This creates:
    app/strategies/login_strategy.rb
DESC

      def create_strategy_file
        template(
          'strategy.rb',
          File.join('app/strategies', "#{singular_name}_strategy.rb")
        )
      end

      hook_for :test_framework
    end
  end
end
