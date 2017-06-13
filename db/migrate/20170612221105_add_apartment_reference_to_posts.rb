class AddApartmentReferenceToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :apartment, foreign_key: true
  end
end
