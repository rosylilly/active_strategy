module Rspec
  class StrategyGenerator < ::Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def create_spec_file
      template(
        'strategy_rspec.rb',
        File.join('spec/strategies', "#{singular_name}_strategy_spec.rb")
      )
    end
  end
end
