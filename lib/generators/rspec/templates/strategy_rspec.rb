# coding: utf-8
require 'spec_helper'

describe <%= singular_name.camelize %>Strategy do
  let(:context) { {} }
  let(:strategy) { desribed_class.new(context) }
  subject { strategy }

  desribe '#<%= singular_name %>' do
  end
end
