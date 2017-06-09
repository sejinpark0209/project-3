class Apartment < ApplicationRecord

  validates :name, :address, :city, :state, presence: true, length: { minimum: 2, maximum: 20 }

  # ONE to MANY: User > Apartment
  belongs_to :user, optional: true
  has_many :post



end
