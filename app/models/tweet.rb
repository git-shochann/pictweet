class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments
end

# コントローラークラスでクラスメソッドであるcreateメソッドがTweetモデルに対して使えるのは
# 恐らくApplicationRecordクラスが所有しているcreateメソッド(クラスメソッド)にDBをいじるSQLとのロジックが組まれている。
# Tweetモデルはそのクラスを継承している。

# バリデーションはモデルクラスに記載。
# このバリデーションの設定で空のツイートは登録不可能になった。