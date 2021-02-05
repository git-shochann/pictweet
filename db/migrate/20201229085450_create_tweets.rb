class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :tweet
      t.string :image
      t.timestamps
    end
  end
end
