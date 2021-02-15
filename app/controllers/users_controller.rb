class UsersController < ApplicationController

  def show

    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.order("created_at DESC").page(params[:page]).per(3)

  end
end


## ビューで必要なものをまずは考える。=> ニックネームとtweets情報。色々な書き方があるけど上記でもOK。