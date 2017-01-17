class Item < ApplicationRecord
  belongs_to :user
  has_many :favorites
  belongs_to :event
  has_many :pictures
  attachment :photo
end
