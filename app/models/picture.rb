class Picture < ApplicationRecord
  belongs_to :item
  attachment :image
end
