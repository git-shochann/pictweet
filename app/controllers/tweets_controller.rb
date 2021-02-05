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

  def edit
    @tweet = Tweet.find(params[:id])
    # => ビューで使う為インスタンス変数が必要 編集画面のビューへ。
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweets_params)
    # => 編集完了のビューへ。
  end

  # ここでのfind(params[:id])はedit.html.erbのパラメーター
  # データをDBに保存する為、privateメソッドでストロングパラメーターを設定する

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    # => 削除完了のビューへ。
  end


  private
  # 他のクラスからアクセス出来ないうようにする。

  def tweets_params
    params.require(:tweet).permit(:name,:text,:image)
  end

end

# form_withでモデルクラスのインスタンスが必要な為、Tweetモデルのインスタンスをここで生成。

# createアクションはフォームで送られてきた情報を元にレコードを保存。ストロングパラメーターも忘れずに設定。 

# ビューで使う必要のないものはローカル変数を使用でOK