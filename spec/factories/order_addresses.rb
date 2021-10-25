FactoryBot.define do
  factory :order_address do
    post_number { '123-4567' }
    area_id {3}
    city { '弘前市' }
    number { '1-1' }
    building_name { 'ハイツ1-1' }
    telephone_number { '09012345678' }
  end
end
