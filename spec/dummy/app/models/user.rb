class User < ActiveRecord::Base
  strategy :login, :class_method => true

  attr_accessible :email, :password
end
