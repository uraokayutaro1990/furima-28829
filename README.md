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

・has_many :items , through :buyer_items


### itemsテーブル
| Column         | Type       | Options
| -------------- | ---------- | ----------  |
| name           | string     | null: false |
| text           | text       | null: false |
| condition	     | integer    | null: false |
| price          | integer    | null: false |

Association
・belongs_to :user
・has_one :buyer_item


### buyer_itemテーブル
| Column             | Type       | Options
| ------------------ | ---------- | ---------- |
| users              | references | 
| items              | references | 

Association

・belongs_to :user
・belongs_to :item
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

・belongs_to :buyer_item



