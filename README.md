## usersテーブル

| Column             | Options             |
| ------------------ | ------------------- |
| nickname           | (string型, NOT NULL) |
| email              | (string型, NOT NULL) |
| encrypted_password | (string型, NOT NULL) |
| first_name         | (string型, NOT NULL) |
| last_name          | (string型, NOT NULL) |
| first_name_kana    | (string型, NOT NULL) |
| last_name_kana     | (string型, NOT NULL) |
| birthday           | (date型), NOT NULL   |

### Association

- has_many :items
- has_many :comments
- has_one :buyer

## itemsテーブル

| Column      | Options                  |
| ----------- | ------------------------ |
| image       | (ActiveStorageで実装)     |
| item_name   | (string型, NOT NULL)     |
| item_text   | (string型, NOT NULL)     |
| category_id | (integer型, NOT NULL)    |
| status_id   | (integer型, NOT NULL)    |
| postage_id  | (integer型, NOT NULL)    |
| area_id     | (integer型, NOT NULL)    |
| day_id      | (integer型, NOT NULL)    |
| price       | (integer型, NOT NULL)    |
| user        | (references型, NOT NULL) |

### Association

- belongs_to :user
- has_many :comments
- belongs_to :buyer

## commentsテーブル

| Column | Options            |
| ------ | ------------------ |
| text   | (text型, NOT NULL) |
| user   | (references型)     |
| item   | (references型)     |

### Association

- belongs_to :item
- belongs_to :user

## buyersテーブル
| Column | Options                  |
| ------ | ------------------------ |
| user   | (references型, NOT NULL) |
| item   | (references型, NOT NULL) |

## Association

- belongs_to :user
- has_many :items
- has_one :address

## addressテーブル

| Column           | Options               |
| ---------------- | --------------------- |
| post_number      | (text型, NOT NULL)    |
| prefecture_id    | (integer型, NOT NULL) |
| city             | (text型, NOT NULL)    |
| number           | (text型, NOT NULL)    |
| building_name    | (text型, NOT NULL)    |
| telephone_number |  (text型, NOT NULL)   |

## Association

- belongs_to :buyer