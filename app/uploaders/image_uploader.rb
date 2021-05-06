class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file


version :thumb do
  process :resize_to_limit => [50, 50]
end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def auto
    manipulate! do|image|
      image.auto_orient
    end
  end
end
