class Tweet < ApplicationRecord
end

# createメソッドがTweetモデルに対して使えるのは
# 恐らくApplicationRecordクラスが所有しているクラスメソッドのcreateメソッドにDBをいじるロジックが組まれている。
# Tweetモデルはそのクラスを継承している。