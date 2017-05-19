class Product < ApplicationRecord
  mount_uploader :image, ImageUpUploader
end
