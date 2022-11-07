class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :emial, presence: true
end