Rails.application.routes.draw do
  root to: 'tweets#index'
  # resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update, :show] => リファクタリング後
  resources :tweets
end

# tweets/newでtweetsコントローラーのnewアクションへ振り分ける。