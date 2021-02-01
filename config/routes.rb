Rails.application.routes.draw do
  resources :tweets, only: :index
end

# 解説 
# tweetsというパスにアクセスすると、tweetsコントローラーのindexアクションを実行。