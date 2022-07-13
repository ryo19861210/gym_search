# ER図

## usersテーブル

| Column             | Type    | Options     |
| name               | string  | null: false |
| email              | string  | null: false |
| phone              | integer | null: false |
| encrypted_password | string  | null: false |

### Association
- has_many :favorites

## gymsテーブル

| Column  | Type    | Options     |
| name    | string  | null :false |
| phone   | integer | null: false |
| address | string  | null: false | 

### Association
- has_many :favorites

## favoritesテーブル

| Column  | Type       | Options                        |
| user    | references | null: false, foreign_key: true |
| gym     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :gym
