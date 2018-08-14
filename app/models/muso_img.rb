class MusoImg < ApplicationRecord
  mount_uploader :img, ImageUploader
  belongs_to :muso
end
