# usersテーブル
|Colum             |  Type|                  Options|
|------------------|-------|-------------------------|
|name              |string |null:false               |
|email             |string |null:false ,unique: true |
|encrypted_password|string |null:false               |
|sex               |string |null:false               |
|age               |integer|null:false               |

- has_many :works
- has_many :comments
- has_many :bgms

# worksテーブル
|Colum             |      Type|                       Options|
|------------------|----------|------------------------------|
|all_time          |time      |null:false                    |
|work_time         |time      |null:false                    |
|break_time        |time      |null:false                    |
|evaluation_id     |integer   |null:false                    |
|user              |references|null:false , foreign_key: true|

- belongs_to :user


# bgmsテーブル
|Colum             |      Type|                       Options|
|------------------|----------|------------------------------|
|name              |string    |null:false                    |
|file              |string    |null:false                    |
|user              |references|null:false , foreign_key: true|

- belongs_to :user

# commentsテーブル
|Colum             |      Type|                       Options|
|------------------|----------|------------------------------|
|user              |references|null:false , foreign_key: true|
|comment           |string    |null:false                    |

- belongs_to :user
