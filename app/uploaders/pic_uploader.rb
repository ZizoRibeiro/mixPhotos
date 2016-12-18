class PicUploader < CarrierWave::Uploader::Base
  include Cloudinary::Carrierwave

  process :convert => 'png'

  version :standard do
    process :resize_to_fill => [100, 150, :north]
  end

end
