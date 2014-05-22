class Post < ActiveRecord::Base
  attr_accessible :name, :text, :user_id

  validates_presence_of :name, :text, :picture

  mount_uploader :picture, PictureUploader
  attr_accessible :picture, :picture_cache, :remove_picture

  belongs_to :user

  extend FriendlyId
  friendly_id :name, use: :slugged

  paginates_per 5
end
