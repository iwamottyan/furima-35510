class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string       :post_number,         null: false
      t.integer      :area_id,             null: false
      t.string       :city,                null: false
      t.string       :number,              null: false
      t.string       :building_name
      t.string       :telephone_number,    null: false
      t.timestamps
    end
  end
end
