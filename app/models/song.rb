class Song < ApplicationRecord
  belongs_to :user
  has_one_attached :cover
  has_one_attached :file
end