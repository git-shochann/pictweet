class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to "/tweets/#{comment.tweet.id}"
  end

  private

    def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id , tweet_id: params[:tweet_id] )
    end

end


# 10行目 => user_idとtweet_idに何を保存したいかを考える。user_idは現在ログインしているユーザー, tweet_idはその投稿のid
# もし難しかったら、先にコメントのフォームを実装して、ストロングパラメーター内で最初にbinding.pryを実装する。そうすればどのようにDBに保存するかが分かる。