# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
-
##  users Tabel

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |


### Association
has_many :items
has_many :Purchase record
has_one :Delivery destination

#  items Tabel

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| product name | string | foreign_key: true |
| category     | string | null: false |
| seller       | string | null: false |
| price        | string | null: false |


### Association
belongs_to :user
belongs_to :Purchase record

#  Purchase record Tabel

|  Column      |  Type  | Options           |
| ------------ | ------ | ----------------- |
| user         | string | foreign_key: true |
| product name | string | foreign_key: true |

### Association
belongs_to :users
has_many :items
has_one :Delivery destination

#  Delivery destination Tabel

| Column     |  Type  | Options     |
| ---------- | ------ | ----------- |
| city       | string | null: false |
| address    | string | null: false |


### Association
belongs_to :users
belongs_to :Purchase record