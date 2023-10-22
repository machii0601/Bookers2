class PostImage < ApplicationRecord

  has_one_ettached :image
  belongs_to :user
end
