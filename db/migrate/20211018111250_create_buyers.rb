class CreateBuyers < ActiveRecord::Migration[6.0]
  def change
    create_table :buyers do |t|
      t.integer     :Token,  null: false, index: true
      t.references  :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
