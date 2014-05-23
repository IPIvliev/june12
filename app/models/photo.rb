class Photo < ActiveRecord::Base
  attr_accessible :name

  attr_accessible :tag_list, :skill_list

  mount_uploader :image, PhotoUploader
  attr_accessible :image, :image_cache, :remove_image

  acts_as_taggable
  # acts_as_taggable_on :skills
end
