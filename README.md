# README

アソシエーション・カラム一覧

### users
Column      Type        Option
nickname    string      null: false
email       string      null: false
password    string      null: false
name        string      null: false
credit      reference   foreign_key: true
consumuption reference  foreign_key: true

 ## Association
  - has_one     :credit
  - has_many    :consumption


### credits
Column      Type        Option
credit_num  integer     null: false
rimit_cons  integer
alert_cons  integer
user        reference   foreign_key: true
consumption reference   foreign_key: true

 ## Association
  - belongs_to  :user
  - has_many    :consumption


### consumption
Column      type      Option
users       reference foreign_key: true
credits     reference foreign_key: true
price       integer
category_id integer

 ## Association
  - belongs_to    :user
  - belongs_to    :credit




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
