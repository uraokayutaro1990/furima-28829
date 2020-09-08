# README


# テーブル設計


## users テーブル

| Colum                   | Type     |  Options
| ----------------------- | -------- | ----------  |
| nickname                | string   | null: false | 
| email	                  | string   | null: false, unique: true |
| encrypted_password      | string   | null: false |
| family_name	            | string   | null: false |
| first_name	            | string   | null: false |
| family_name_kana        | string   | null: false |
| first_name              | string   | null: false |
| date_select_birthday    | string   | null: false |
| birth_month             | string   | null: false |
| birth_day               | string   | null: false |

Association 

・has_many : items
・has_many : buyer_items 


### itemsテーブル
| Column         | Type       | Options
| -------------- | ---------- | ----------  |
| name           | string     | null: false |
| price          | integer    | null: false |
| text           | text       | null: false |
| nickname       | string     | null: false |
| category       | string     | null: false |
| condition	     | integer    | null: false |
| postage        | integer    | null: false |
| prefecture     | string     | null: false |
| delivery_time  | string     | null: false |


Association 
・belongs_to :user
・has_one :buyer_item 

### buyer_itemテーブル
| Column             | Type       | Options
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |
| user_id            | integer    | null: false                    |

Association

・belongs_to :user
・belongs_to :item
・






