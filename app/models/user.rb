class User < ActiveRecord::Base
  attr_accessible :lastname, :name, :phone, :role
end
