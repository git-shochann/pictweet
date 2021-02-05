Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update]
end

# tweets/newでtweetsコントローラーのnewアクションへ振り分ける。