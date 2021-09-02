## usersテーブル

| Column   | Options             |
| -------- | ------------------- |
| name     | (string型, NOT NULL) |
| email    | (string型, NOT NULL) |
| password | (string型, NOT NULL) |
| birthday | (date型), NOT NULL   |

## itemsテーブル

| Column      | Options               |
| ----------- | --------------------- |
| image       | (ActiveStorageで実装)  |
| name        | (string型, NOT NULL)  |
| explanation | (string型, NOT NULL)  |
| category    | (string型, NOT NULL)  |
| status      | (string型, NOT NULL)  |
| postage     | (string型, NOT NULL)  |
| area        | (string型, NOT NULL)  |
| days        | (string型, NOT NULL)  |
| price       | (integer型, NOT NULL) |
| user        | (references型)        |

## commentsテーブル

| Column | Options            |
| ------ | ------------------ |
| text   | (text型, NOT NULL) |
| user   | (references型)     |
| item   | (references型)     |

## buyersテーブル

| Column  | Options            |
| ------- | ------------------ |
| address | (text型, NOT NULL) |
| user    | (references型)     |