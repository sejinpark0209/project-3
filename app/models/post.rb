class Post < ApplicationRecord

  validates :contact, :p_ref_fee, :exp_date, presence: true, length: { minimum: 2 }
  validates :ratio_me, numericality: { only_integer: true, greater_than: 0, less_than: 10, :message => " should be a number" }
  validates :ratio_you, numericality: { only_integer: true, greater_than: 0, less_than: 10, :message => " should be a number" }

  belongs_to :apartment, optional: true
  belongs_to :user, optional: true

end
