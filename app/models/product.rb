class Product < ActiveRecord::Base
  attr_accessible :description, :name, :work, :price

  attr_accessible :tag_list

  mount_uploader :show, ProductUploader
  attr_accessible :show, :show_cache, :remove_show

  # Добавляем тэги
  acts_as_taggable
end