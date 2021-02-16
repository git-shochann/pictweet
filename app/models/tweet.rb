class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search) # 投稿を表示するメソッド

    if search
      Tweet.where( "text LIKE(?)", "#{search}" )
    else
      Tweet.all
    end

  end

end

# コントローラークラスでクラスメソッドであるcreateメソッドがTweetモデルに対して使えるのは
# 恐らくApplicationRecordクラスが所有しているcreateメソッド(クラスメソッド)にDBをいじるSQLとのロジックが組まれている。
# Tweetモデルはそのクラスを継承している。

# バリデーションはモデルクラスに記載。
# このバリデーションの設定で空のツイートは登録不可能になった。

# コントローラーはあくまでモデルの機能を利用し処理を呼ぶだけで、複雑な処理は組まない。

# where => モデル.where(条件)のように引数部分に条件を指定することで、テーブル内の条件に一致したレコードのインスタンスを配列の形で取得できます。