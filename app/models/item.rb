class Item < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :bids
  belongs_to :event
  has_many :pictures
  attachment :photo
end
