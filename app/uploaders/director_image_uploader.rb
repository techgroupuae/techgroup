class DirectorImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  def store_dir
    "director-images/#{model.id}"
  end
  
  version :thumbnail do
    process :resize_to_fill => [290, 156]
    process :quality => 90
  end

end
