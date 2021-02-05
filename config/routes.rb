Rails.application.routes.draw do
  resources :tweets, only: [:index, :new, :create]
end

# tweets/newでtweetsコントローラーのnewアクションへ振り分ける。