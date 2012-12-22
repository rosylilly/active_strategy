class User < ActiveRecord::Base
  include ActiveStrategy::Context

  strategy :login, :class_method => true

  attr_accessible :email, :password
end
