class UsersController < ApplicationController

  def show

    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets

  end
end


## ビューで必要なものをまずは考える。=> ニックネームとtweets情報。色々な書き方があるけど上記でもOK。