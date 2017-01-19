class Item < ApplicationRecord
  PRICES = [
    ["", 0],
    ["$", 1],
    ["$$", 2],
    ["$$$", 3],
    ["$$$$", 4],
    ["$$$$$", 5]
  ]
  belongs_to :user
  has_many :favorites
  has_many :bids
  belongs_to :event
  has_many :pictures
  attachment :photo
end
