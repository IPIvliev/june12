class Order < ActiveRecord::Base
  attr_accessible :amount, :paid, :product_id, :size, :user_id
end
