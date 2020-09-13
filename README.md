# README


# テーブル設計


## users テーブル

| Colum                   | Type     |  Options
| ----------------------- | ------------- | ----------  |
| nickname                | string        | null: false | 
| email                   | string        | null: false, unique: true |
| encrypted_password      | string        | null: false |
| family_name             | string        | null: false |
| first_name              | string        | null: false |
| family_name_kana        | string        | null: false |
| first_name_kana         | string        | null: false |
| birthday                | date          | null: false |

Association 

・has_many : items
・has_many : buyer_items 

### itemsテーブル
| Column            | Type       | Options
| ----------------  | ---------- | ----------- |
| user_id | integer | null: false, foreign_key: true |
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
・has_one : buyer_item 

### buyer_itemsテーブル
| Column             | Type       | Options 
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |

Association

・belongs_to : user 
・belongs_to : item
・has_one : deliver_address

### deliver_addresses テーブル

| Column           | Type       | Options
| ---------------- | ---------- | ----------- |
| buyer_item_id   | integer    | null: false , foreign: true |
| zip_code         | string     | null: false |
| prefecture_id    | integer    | null: false |
| city             | string     | null: false |
| address          | string     | null: false | 
| building          | string     | 
| telephone        | string     | null: false |

### Association
・belongs_to :buyer_item












