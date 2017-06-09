class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.decimal :ref_fee
      t.integer :num_post

      t.timestamps
    end
  end
end
