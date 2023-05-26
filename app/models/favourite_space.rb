class FavouriteSpace < ApplicationRecord
  belongs_to :user
  belongs_to :department
  belongs_to :space
end
