# README


# テーブル設計


## users テーブル

| Colum                   | Type     |  Options
| ----------------------- | ------------- | ----------  |
| nickname                | string        | null: false | 
| email	                  | string        | null: false, unique: true |
| encrypted_password      | string        | null: false |
| family_name	            | string        | null: false |
| first_name	            | string        | null: false |
| family_name_kana        | string        | null: false |
| first_name              | string        | null: false |
| birthday                | date          | null: false |

Association 

・has_many : items
・has_many : buyer_items 

### itemsテーブル
| Column         | Type       | Options
| -------------- | ---------- | ----------  |
| name           | string     | null: false |
| price          | integer    | null: false |
| text           | text       | null: false |
| category       | string     | null: false |
| condition	     | integer    | null: false |
| postage        | string     | null: false |
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

### deliver_address テーブル

| Column           | Type       | Options
| ---------------- | ---------- | ----------- |
| buyer_items_id   | integer    | null: false                    |
| zip_code         | integer    | null: false |
| prefecture_id    | integer    | null: false |
| city             | string     | null: false |
| adress1          | string     | null: false | 
| adress2          | string     |
| telephone        | string     | null: false |

### Association
・belongs_to :buyer_items












