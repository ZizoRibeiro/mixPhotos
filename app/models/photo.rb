class Photo < ApplicationRecord
  mount_base64_uploader :pic, PicUploader
end
