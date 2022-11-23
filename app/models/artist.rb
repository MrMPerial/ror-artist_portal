class Artist < ApplicationRecord
  belongs_to :role
  has_one :song
end