Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  # resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update, :show] => リファクタリング後
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end

# tweets/newでtweetsコントローラーのnewアクションへ振り分ける。