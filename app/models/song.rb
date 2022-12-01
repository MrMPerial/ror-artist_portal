class Song < ApplicationRecord
  belongs_to :user
  has_one_attached :song_cover
  has_one_attached :song_file
end