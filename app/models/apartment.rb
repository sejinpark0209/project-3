class Apartment < ApplicationRecord

  validates :name, :address, :state, presence: true, length: { minimum: 2 }

  geocoded_by :address
  after_validation :geocode

  has_many :post




end
