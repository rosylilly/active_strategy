# coding: utf-8
require 'spec_helper'

describe <%= singular_name.camelize %>Strategy do
  let(:context) { {} }
  let(:strategy) { described_class.new(context) }
  subject { strategy }

  describe '#<%= singular_name %>' do
  end
end
