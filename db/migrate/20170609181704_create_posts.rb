class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :contact
      t.decimal :p_ref_fee
      t.integer :ratio_me
      t.integer :ratio_you
      t.string :exp_date

      t.timestamps
    end
  end
end
