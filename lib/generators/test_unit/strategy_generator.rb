module TestUnit
  class StrategyGenerator < ::Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def create_test_file
      template(
        'strategy_test.rb',
        File.join('test/strategies', "#{singular_name}_strategy_test.rb")
      )
    end
  end
end
