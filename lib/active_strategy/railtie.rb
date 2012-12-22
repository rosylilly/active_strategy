require 'rails'

module ActiveStrategy
  class Railtie < ::Rails::Railtie
    initializer 'active_strategy' do
      ActiveSupport.on_load(:active_record) do
        require 'active_record/active_strategy'
      end

      ActiveSupport.on_load(:mongoid) do
        require 'mongoid/active_strategy'
      end
    end
  end
end
