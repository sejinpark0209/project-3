class Apartment < ApplicationRecord

  validates :name, :address, :city, :state, presence: true, length: { minimum: 2, maximum: 20 }

  has_many :post



end
