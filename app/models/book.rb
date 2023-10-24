class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :user, dependent: :destroy
  mount_uploader :image,ImageUploader
end
