class Post < ActiveRecord::Base
  attr_accessible :name, :picture, :text, :user_id
end
