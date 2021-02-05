class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
    # => 全体ページのDBから全ての値を表示するためのアクション。
  end

  def new
    @tweet = Tweet.new
    # => 新規投稿ページのビューへ。
  end
  
  def create
    Tweet.create(tweets_params)
    # => 投稿完了のビューへ。
  end

  private

  def tweets_params
    params.require(:tweet).permit(:name,:text,:image)
  end

end

# form_withでモデルクラスのインスタンスが必要な為、Tweetモデルのインスタンスをここで生成。

# createアクションはフォームで送られてきた情報を元にレコードを保存。ストロングパラメーターも忘れずに設定。 