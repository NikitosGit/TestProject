class Admin < ActiveRecord::Base
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  mount_uploader :avatar, AdminUploader
  mount_uploader :image_passport, AdminUploader
  validates :password, length: { minimum: 10 }
end
