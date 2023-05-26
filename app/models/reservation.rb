class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :department
  belongs_to :space
  belongs_to :seat
end
