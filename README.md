## usersテーブル

| Column             | Options                  |
| ------------------ | ------------------------ |
| nickname           | (string型, NOT NULL)     |
| email              | (string型, unique: true) |
| encrypted_password | (string型, NOT NULL)     |
| first_name         | (string型, NOT NULL)     |
| last_name          | (string型, NOT NULL)     |
| first_name_kana    | (string型, NOT NULL)     |
| last_name_kana     | (string型, NOT NULL)     |
| birthday           | (date型), NOT NULL       |

### Association

- has_many :items
- has_many :buyers

## itemsテーブル

| Column      | Options                           |
| ----------- | --------------------------------- |
| item_name   | (string型, NOT NULL)              |
| item_text   | (text型, NOT NULL)                |
| category_id | (integer型, NOT NULL)             |
| status_id   | (integer型, NOT NULL)             |
| postage_id  | (integer型, NOT NULL)             |
| area_id     | (integer型, NOT NULL)             |
| day_id      | (integer型, NOT NULL)             |
| price       | (integer型, NOT NULL)             |
| user        | (references型, foreign_key: true) |

### Association

- belongs_to :user
- has_one :buyer


## buyersテーブル
| Column | Options                           |
| ------ | --------------------------------- |
| user   | (references型, foreign_key: true) |
| item   | (references型, foreign_key: true) |

## Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addressテーブル

| Column           | Options                           |
| ---------------- | --------------------------------- |
| post_number      | (string型, NOT NULL)              |
| area_id          | (integer型, NOT NULL)             |
| city             | (string型, NOT NULL)              |
| number           | (string型, NOT NULL)              |
| building_name    | (string型)                        |
| telephone_number | (string型, NOT NULL)              |
| buyer            | (references型, foreign_key: true) |

## Association

- belongs_to :buyer