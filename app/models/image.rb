class Image < ActiveRecord::Base
  mount_uploader :image_ref, ImageUploader
  belongs_to :image_library
end
