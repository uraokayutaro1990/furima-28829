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
| family_name              | string       | null: false |
| birthday                | date          | null: false |

Association 

・has_many : items
・has_many : buyer_items 

### itemsテーブル
| Column            | Type       | Options
| ----------------  | ---------- | ----------  |
| name              | string     | null: false |
| price             | integer    | null: false |
| text              | text       | null: false |
| category_id       | integer    | null: false |
| condition_id	    | integer    | null: false |
| postage_id        | integer    | null: false |
| prefecture_id     | integer    | null: false |
| delivery_time_id  | integer    | null: false |

Association 
・belongs_to :user 
・has_one :buyer_item 

### buyer_itemテーブル
| Column             | Type       | Options
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |

Association

・belongs_to :user
・belongs_to :
・has_one :deliver_address

### deliver_address テーブル

| Column           | Type       | Options
| ---------------- | ---------- | ----------- |
| buyer_items_id   | integer    | null: false ,FK: true |
| zip_code         | string     | null: false |
| prefecture_id    | integer    | null: false ,FK: true |
| city             | string     | null: false |
| adress1          | string     | null: false | 
| adress2          | string     |
| telephone        | string     | null: false |

### Association
・belongs_to :buyer_item












