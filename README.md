# README

# 本アプリ作成経緯
・現代の買い物にはクレジットカードが必須の時代となった
  便利となった反面、現実のお金がその場で増減しないということが、無駄遣いの原因となっている
  そのため私は、いつでもクレジット決済額を見れる機能を搭載することで、自分がどれだけ使ったか、危機感とともに過ごすことができる
・ただ、自分を律することはそう簡単ではない
  記録するだけでは強制力を持たせることはかなり難しい
  これを克服するために、私は二つの機能を考案した
  ①クレジット限度額機能
    予め自分で使うであろう限度額を決めておき、それを超えると警告メッセージが流れるというものである
    現在構想段階では、ユーザー登録時のメールアドレスに警告メールが送信されるように考えている
  ②他ユーザーの使用額確認機能
    本アプリケーションの目的は、クレジット使用額の節約である
    人間は他の人に合わせるという「多数派同調バイアス」があり、日本人はこの傾向が強い
    これを利用して、使用限度額が似ているユーザーの使用額を視覚化することで「周りはあまり使っていないし、自分もやめておこう」という心理を呼び起こすことができると考えた
    ※前提としてプライバシーを守るため、他ユーザーの使用額は合計額しか見えないようにする
・機能解説
  ①ユーザーログイン機能
    ユーザーとクレジットカードを紐づけることで、決済額をみられるようにする
    ログインすることで、どの機器で開いても記録ができるようにする（利便性意識）
    また、ユーザーと紐づけることで、表示設定などの保存を容易にする
  ②決済額記録機能
    クレジットカードで使われたお金のデータを呼び出すことができる
    どの期間でいくら使われたかを見ることができる（デフォルトは月ごと）
    JavaScriptを用い、リアルタイムで期間の変更、グラフなどの表示形式の変更を行うことができる
    この形式を変更しても、ユーザー設定から変更しなければこの操作は記録されない（設定を元に戻す手間を回避。基本的には一ヶ月分を確認する傾向が強く、一般的な家計簿アプリも月ごとの集計だから）
    また、決済で使われた額にカテゴリーを振り分けすることができ、カテゴリーごとの使用額もみられるようにする（手動）
  ③決済額警告機能
    手動で設定する機能。
    自分で月ごとの限度額を設定することができ、設定額を超えるとメールが届く仕組み
    警告（目標額）と限度額（これ以上は禁止）の二つを設定することができるが、機能的な違いは現在つける予定はなし（クレジットカード使用停止処理をしないとならないため、いざというときの対応が難しくなる）
    スマホのギガ使用量の警告から着想を得た機能
  ④他ユーザーの決済額閲覧機能
    前述したように、プライバシーの観点があるため、合計額のみの表示をする
    他ユーザーの使用額が見れるようにすることで、多数派同調バイアスを誘う仕組み
    所得や現金使用比率の違いから、ユーザーごとの使用額は大きく異なってくることがネックとなる
    そのため、③の決済額警告機能で設定した額に近いユーザーを検出し、五件ほど表示することで効果の有効化を図る
    また、設定額から大幅に超過しているユーザーが、本アプリの目的を妨害する存在となってしまうため、設定額*1.5以上の決済額のユーザーを表示候補から外す
    



# アソシエーション・カラム一覧

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
