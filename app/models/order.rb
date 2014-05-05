class Order < ActiveRecord::Base
  attr_accessible :totalprice, :paid, :line_items, :user_id

  serialize :line_items, Hash
end