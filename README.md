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

## itemsテーブル

| Column      | Options                  |
| ----------- | ------------------------ |
| image       | (ActiveStorageで実装)     |
| name        | (string型, NOT NULL)     |
| explanation | (string型, NOT NULL)     |
| category_id | (string型, NOT NULL)     |
| status_id   | (string型, NOT NULL)     |
| postage_id  | (string型, NOT NULL)     |
| area_id     | (string型, NOT NULL)     |
| days_id     | (integer型, NOT NULL)    |
| price       | (integer型, NOT NULL)    |
| user        | (references型, NOT NULL) |

## commentsテーブル

| Column | Options            |
| ------ | ------------------ |
| text   | (text型, NOT NULL) |
| user   | (references型)     |
| item   | (references型)     |

## addressテーブル

| Column  | Options            |
| ------- | ------------------ |
| address | (text型, NOT NULL) |
