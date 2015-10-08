class Guest < ActiveRecord::Base
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  validates :password, length: { minimum: 6 }
end
