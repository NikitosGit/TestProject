class Product < ActiveRecord::Base
  validates :name, :description, presence: true
  mount_uploader :image, ImageUploader
end
