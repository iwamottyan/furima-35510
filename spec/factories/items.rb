FactoryBot.define do
  factory :item do
    item_name {Faker::Lorem.sentence}
    item_text {Faker::Lorem.sentence}
    category_id {2}
    status_id {3}
    postage_id {2}
    area_id {2}
    item_day_id {2}
    price {3000}
    association :user

    after(:build) do |item|
      item.image.attach(io:File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
