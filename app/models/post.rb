class Post < ApplicationRecord

  validates :contact, :p_ref_fee, :ratio_me, :ratio_you, :exp_date presence: true, length: { minimum: 2, maximum: 20 }

  belongs_to :apartment, optional: true
  belongs_to :user, optional: true
end
