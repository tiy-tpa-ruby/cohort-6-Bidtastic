class Item < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :pictures
end
