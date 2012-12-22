module ActiveStrategy
  module Strategy
    def initialize(context = {})
      context.each_pair do |key, val|
        instance_variable_set(:"@#{key}", val)
      end
    end
  end
end
