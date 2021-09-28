class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string        :item_name,     nill: false
      t.text          :item_text,     nill: false
      t.integer       :category_id,   nill: false
      t.integer       :status_id,     nill: false
      t.integer       :postage_id,    nill: false
      t.integer       :area_id,       nill: false
      t.integer       :day_id,        nill: false
      t.integer       :price,         nill: false
      t.timestamps
    end
  end
end
