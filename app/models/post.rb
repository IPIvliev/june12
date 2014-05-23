class Post < ActiveRecord::Base
	attr_accessible :name, :text, :user_id
	attr_accessible :tag_list, :skill_list

	validates_presence_of :name, :text, :picture

	mount_uploader :picture, PictureUploader
	attr_accessible :picture, :picture_cache, :remove_picture

	belongs_to :user

  # Меняем адрес новости на человеческий
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Добавляем тэги
  acts_as_taggable

  # На странице по 5 новостей
  paginates_per 5

  def self.search(search)
  	if search
  		find(:all, :conditions => ['name LIKE ? OR text LIKE ?', "%#{search}%", "%#{search}%"])
  	else
  		find(:all)
  	end
  end

end
