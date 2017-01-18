class Event < ApplicationRecord
  DESCRIPTIONS = ["", "Jewelry", "Art", "Memorabilia", "Furniture", "Tickets"]
  LOCATIONS = ["", "Portland", "Tampa", "Chicago", "St. Petersburg"]
  has_many :items
end
