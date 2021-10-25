FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.free_email}
    password {'1a' + Faker::Internet.password(min_length: 6, mix_case: true)}
    password_confirmation {password}
    last_name {"岩本"}
    first_name {"和幸"}
    last_name_kana {"イワモト"}
    first_name_kana {"カズユキ"}
    birthday {Faker::Date.birthday}
  end
end