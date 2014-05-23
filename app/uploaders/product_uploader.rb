# encoding: utf-8

class ProductUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_fit => [640, 480]

  version :thumb do
    process :resize_to_fit => [260, 260]
  end

end
