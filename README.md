# README


# テーブル設計


## users テーブル

| Colum            | Type     |  Options
| ---------------- | -------- |　---------- |
| nickname         | string   | null: false | 
| email	           | string   |	null: false, unique: true |
| password         | string   |	null: false |
| password         | string   |	null: false |
| family_name	     | string   | null: false |
| first_name	     | string   | null: false |
| family_name_kana | string   | null: false |
| first_name       | string   |	null: false |
| birth_year	     | string   |	null: false |
| birth_month      | string   |	null: false |
| birth_day        | string   |	null: false |

### Association

・has_many :buyer_items
・has_one :buyer_items


### itemsテーブル
| Column         | Type       | Options
| -------------- | ---------- | ----------  |
| name           | string     | null: false |
| text           | text       | null: false |
| condition	     | integer    | null: false |
| price          | integer    | null: false |

Association
・belongs_to :users
・has_one :buyers_items

### buyer_itemsテーブル
| Column             | Type       | Options
| ------------------ | ---------- | ---------- |
| users              | references | 
| items              | references | 

Association

・belongs_to :users
・belongs_to :items
・has_one : deliver_address


### deliver_address テーブル

| Column           | Type	      | Options
| ---------------- | ---------- | ----------- |
| users            | references | null: false, FK: true |
| family_name      | string     | null: false |
| first_name       | string     | null: false |
| family_name_kana | string	    | null: false |
| first_name_kana  | string     |	null: false |
| zip_code         | integer    | null: false |
| prefecture       | string	    | null: false |
| city             | string     | null: false |
| adress1          | string     | null: false | 
| adress2          | string     |
| telephone	       | string     | unique: true |

### Association

・belongs_to :users
・belongs_to :buyer_items
・belong_to :items


